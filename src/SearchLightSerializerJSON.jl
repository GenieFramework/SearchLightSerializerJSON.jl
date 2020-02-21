module SearchLightSerializerJSON

import SearchLight
import JSON

function SearchLight.Serializer.serialize(data) :: String
  JSON.json(data)
end

function SearchLight.Serializer.deserialize(::Type{T}, json_data)::T where {T}
  JSON.parse(json_data)
end

end