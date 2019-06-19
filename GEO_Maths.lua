-- Vector Maths derived from 
-- https://github.com/bjornbytes/maf
-- MIT License

local ffi = type(jit) == 'table' and jit.status() and require 'ffi'
local vec3

local forward
local vtmp1
local vtmp2

vec3 = {
  __call = function(_, x, y, z)
    return setmetatable({ x = x or 0, y = y or 0, z = z or 0 }, vec3)
  end,

  __tostring = function(v)
    return string.format('(%f, %f, %f)', v.x, v.y, v.z)
  end,

  __add = function(v, u) return v:add(u, vec3()) end,
  __sub = function(v, u) return v:sub(u, vec3()) end,
  __mul = function(v, u)
    if vec3.isvec3(u) then return v:mul(u, vec3())
    elseif type(u) == 'number' then return v:scale(u, vec3())
    else error('vec3s can only be multiplied by vec3s and numbers') end
  end,
  __div = function(v, u)
    if vec3.isvec3(u) then return v:div(u, vec3())
    elseif type(u) == 'number' then return v:scale(1 / u, vec3())
    else error('vec3s can only be divided by vec3s and numbers') end
  end,
  __unm = function(v) return v:scale(-1) end,
  __len = function(v) return v:length() end,

  __index = {
    isvec3 = function(x)
      return ffi and ffi.istype('vec3', x) or getmetatable(x) == vec3
    end,

    clone = function(v)
      return vec3(v.x, v.y, v.z)
    end,

    unpack = function(v)
      return v.x, v.y, v.z
    end,

    set = function(v, x, y, z)
      if vec3.isvec3(x) then x, y, z = x.x, x.y, x.z end
      v.x = x
      v.y = y
      v.z = z
      return v
    end,

    add = function(v, u, out)
      out = out or v
      out.x = v.x + u.x
      out.y = v.y + u.y
      out.z = v.z + u.z
      return out
    end,

    sub = function(v, u, out)
      out = out or v
      out.x = v.x - u.x
      out.y = v.y - u.y
      out.z = v.z - u.z
      return out
    end,

    mul = function(v, u, out)
      out = out or v
      out.x = v.x * u.x
      out.y = v.y * u.y
      out.z = v.z * u.z
      return out
    end,

    div = function(v, u, out)
      out = out or v
      out.x = v.x / u.x
      out.y = v.y / u.y
      out.z = v.z / u.z
      return out
    end,

    scale = function(v, s, out)
      out = out or v
      out.x = v.x * s
      out.y = v.y * s
      out.z = v.z * s
      return out
    end,

    length = function(v)
      return math.sqrt(v.x * v.x + v.y * v.y + v.z * v.z)
    end,

    normalize = function(v, out)
      out = out or v
      local len = v:length()
      return len == 0 and v or v:scale(1 / len, out)
    end,

    distance = function(v, u)
      return vec3.sub(v, u, vtmp1):length()
    end,

    angle = function(v, u)
      return math.acos(v:dot(u) / (v:length() + u:length()))
    end,

    dot = function(v, u)
      return v.x * u.x + v.y * u.y + v.z * u.z
    end,

    cross = function(v, u, out)
      out = out or v
      local a, b, c = v.x, v.y, v.z
      out.x = b * u.z - c * u.y
      out.y = c * u.x - a * u.z
      out.z = a * u.y - b * u.x
      return out
    end,

    lerp = function(v, u, t, out)
      out = out or v
      out.x = v.x + (u.x - v.x) * t
      out.y = v.y + (u.y - v.y) * t
      out.z = v.z + (u.z - v.z) * t
      return out
    end,

    project = function(v, u, out)
      out = out or v
      local unorm = vtmp1
      u:normalize(unorm)
      local dot = v:dot(unorm)
      out.x = unorm.x * dot
      out.y = unorm.y * dot
      out.z = unorm.z * dot
      return out
    end,

    rotate = function(v, q, out)
      out = out or v
      local u, c, o = vtmp1, vtmp2, out
      u.x, u.y, u.z = q.x, q.y, q.z
      o.x, o.y, o.z = v.x, v.y, v.z
      u:cross(v, c)
      local uu = u:dot(u)
      local uv = u:dot(v)
      o:scale(q.w * q.w - uu)
      u:scale(2 * uv)
      c:scale(2 * q.w)
      return o:add(u:add(c))
    end
  }
}

if ffi then
  ffi.cdef [[
    typedef struct { double x, y, z; } vec3;
    typedef struct { double x, y, z, w; } quat;
  ]]

  vec3 = ffi.metatype('vec3', vec3)
else
  setmetatable(vec3, vec3)
end

forward = vec3(0, 0, -1)
vtmp1 = vec3()
vtmp2 = vec3()

return {
  vec3 = vec3,

  vector = vec3,
}
