require "import"
import "android.content.Context"
import "android.widget.Button"
import "android.widget.LinearLayout"
import "android.widget.ScrollView"
import "android.widget.TextView"
import "com.androlua.LuaDialog"
import "android.os.Handler"
import "android.os.Looper"

local context = activity or service
local handler = Handler(Looper.getMainLooper())

local mainDialog = nil
local listLayout = nil
local status = nil

function mostrarInicio()
    local mainLay = {
        LinearLayout;
        orientation = "vertical";
        padding = "15dp";
        {
            TextView;
            text = "TIENDA INDOMABLE";
            textSize = "18sp";
            id = "statusTxt";
        };
        {
            ScrollView;
            layout_height = "fill";
            layout_width = "match_parent";
            {
                LinearLayout;
                orientation = "vertical";
                id = "listLayout";
            };
        };
    }
    mainDialog = LuaDialog(context)
    mainDialog.setTitle("")
    mainDialog.setView(loadlayout(mainLay))
    mainDialog.setCancelable(false)
    mainDialog.show()
    
    status = statusTxt
    listLayout = listLayout
    if status then
        status.setText("Superadmin conectado: Mateo Huamán")
    end
end

mostrarInicio()
