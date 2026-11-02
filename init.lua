require "import"
import "android.content.Context"
import "android.widget.Button"
import "android.widget.LinearLayout"
import "android.widget.TextView"
import "com.androlua.LuaDialog"

local context = activity or service

function iniciarTiendaIndomable()
    local lay = {
        LinearLayout;
        orientation = "vertical";
        padding = "20dp";
        {
            TextView;
            text = "TIENDA INDOMABLE - MODULO ACTIVO";
            textSize = "16sp";
        };
        {
            Button;
            text = "VER CATEGORIAS";
            id = "btnCat";
        };
    }
    local d = LuaDialog(context)
    d.setTitle("")
    d.setView(loadlayout(lay))
    d.show()
    
    btnCat.onClick = function()
        d.dismiss()
        print("Módulo de Tienda Indomable cargado correctamente.")
    end
end

iniciarTiendaIndomable()
