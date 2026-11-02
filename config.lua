require "import"
import "android.content.Context"

-- Configuración oficial de Tienda Indomable
local REPO = "mateoguaman290-maker/tienda-de-complementos"
local TOKEN = "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"

function obtenerConfiguracionTienda()
    print("Tienda Indomable vinculada correctamente al repositorio: " .. REPO)
    return REPO, TOKEN
end

obtenerConfiguracionTienda()
