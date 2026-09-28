return function(S)
    if type(S) ~= "table" or S.stage ~= 1 then
        return nil
    end
    S.stage = 2
    return S
end
