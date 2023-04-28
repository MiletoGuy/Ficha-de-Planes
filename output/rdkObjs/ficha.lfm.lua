require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmFichaPlanes()
    local obj = GUI.fromHandle(_obj_newObject("form"));
    local self = obj;
    local sheet = nil;

    rawset(obj, "_oldSetNodeObjectFunction", rawget(obj, "setNodeObject"));

    function obj:setNodeObject(nodeObject)
        sheet = nodeObject;
        self.sheet = nodeObject;
        self:_oldSetNodeObjectFunction(nodeObject);
    end;

    function obj:setNodeDatabase(nodeObject)
        self:setNodeObject(nodeObject);
    end;

    _gui_assignInitialParentForForm(obj.handle);
    obj:beginUpdate();
    obj:setFormType("sheetTemplate");
    obj:setDataType("FICHA_PLANES");
    obj:setTitle("Ficha de Jogador [Planes]");
    obj:setName("frmFichaPlanes");
    obj:setTheme("dark");

    obj.pgcPrincipal = GUI.fromHandle(_obj_newObject("tabControl"));
    obj.pgcPrincipal:setParent(obj);
    obj.pgcPrincipal:setAlign("client");
    obj.pgcPrincipal:setName("pgcPrincipal");

    obj.abaAtributos = GUI.fromHandle(_obj_newObject("tab"));
    obj.abaAtributos:setParent(obj.pgcPrincipal);
    obj.abaAtributos:setName("abaAtributos");
    obj.abaAtributos:setTitle("Atributos");

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.abaAtributos);
    obj.rectangle1:setAlign("client");
    obj.rectangle1:setColor("#40000000");
    obj.rectangle1:setXradius(10);
    obj.rectangle1:setYradius(10);
    obj.rectangle1:setName("rectangle1");

    obj.scrollBox1 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj.rectangle1);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.flowLayout1 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout1:setParent(obj.scrollBox1);
    obj.flowLayout1:setAlign("client");
    obj.flowLayout1:setMaxControlsPerLine(1);
    obj.flowLayout1:setAutoHeight(true);
    obj.flowLayout1:setHorzAlign("center");
    obj.flowLayout1:setName("flowLayout1");

    obj.flowLayout2 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout2:setParent(obj.flowLayout1);
    obj.flowLayout2:setMaxWidth(1500);
    obj.flowLayout2:setAutoHeight(true);
    obj.flowLayout2:setMinWidth(1000);
    obj.flowLayout2:setMinScaledWidth(500);
    obj.flowLayout2:setHorzAlign("center");
    obj.flowLayout2:setMaxControlsPerLine(10);
    obj.flowLayout2:setName("flowLayout2");

    obj.flowLayout3 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout3:setParent(obj.flowLayout2);
    obj.flowLayout3:setName("flowLayout3");
    obj.flowLayout3:setWidth(96);
    obj.flowLayout3:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.flowLayout3);
    obj.edit1:setText("");
    obj.edit1:setName("edit1");
    obj.edit1:setReadOnly(true);
    obj.edit1:setCanFocus(false);
    obj.edit1:setHorzTextAlign("center");
    obj.edit1:setAlign("client");

    obj.flowLayout4 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout4:setParent(obj.flowLayout2);
    obj.flowLayout4:setName("flowLayout4");
    obj.flowLayout4:setWidth(96);
    obj.flowLayout4:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.flowLayout4);
    obj.edit2:setText("Nível");
    obj.edit2:setName("edit2");
    obj.edit2:setReadOnly(true);
    obj.edit2:setCanFocus(false);
    obj.edit2:setHorzTextAlign("center");
    obj.edit2:setAlign("client");

    obj.flowLayout5 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout5:setParent(obj.flowLayout2);
    obj.flowLayout5:setName("flowLayout5");
    obj.flowLayout5:setWidth(96);
    obj.flowLayout5:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.flowLayout5);
    obj.edit3:setText("Classe");
    obj.edit3:setName("edit3");
    obj.edit3:setReadOnly(true);
    obj.edit3:setCanFocus(false);
    obj.edit3:setHorzTextAlign("center");
    obj.edit3:setAlign("client");

    obj.flowLayout6 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout6:setParent(obj.flowLayout2);
    obj.flowLayout6:setName("flowLayout6");
    obj.flowLayout6:setWidth(96);
    obj.flowLayout6:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.flowLayout6);
    obj.edit4:setText("Raça");
    obj.edit4:setName("edit4");
    obj.edit4:setReadOnly(true);
    obj.edit4:setCanFocus(false);
    obj.edit4:setHorzTextAlign("center");
    obj.edit4:setAlign("client");

    obj.flowLayout7 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout7:setParent(obj.flowLayout2);
    obj.flowLayout7:setName("flowLayout7");
    obj.flowLayout7:setWidth(96);
    obj.flowLayout7:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.flowLayout7);
    obj.edit5:setText("Treino");
    obj.edit5:setName("edit5");
    obj.edit5:setReadOnly(true);
    obj.edit5:setCanFocus(false);
    obj.edit5:setHorzTextAlign("center");
    obj.edit5:setAlign("client");

    obj.flowLayout8 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout8:setParent(obj.flowLayout2);
    obj.flowLayout8:setName("flowLayout8");
    obj.flowLayout8:setWidth(96);
    obj.flowLayout8:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.flowLayout8);
    obj.edit6:setText("Outro");
    obj.edit6:setName("edit6");
    obj.edit6:setReadOnly(true);
    obj.edit6:setCanFocus(false);
    obj.edit6:setHorzTextAlign("center");
    obj.edit6:setAlign("client");

    obj.flowLayout9 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout9:setParent(obj.flowLayout2);
    obj.flowLayout9:setName("flowLayout9");
    obj.flowLayout9:setWidth(96);
    obj.flowLayout9:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.flowLayout9);
    obj.edit7:setText("Base");
    obj.edit7:setName("edit7");
    obj.edit7:setReadOnly(true);
    obj.edit7:setCanFocus(false);
    obj.edit7:setHorzTextAlign("center");
    obj.edit7:setAlign("client");

    obj.flowLayout10 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout10:setParent(obj.flowLayout2);
    obj.flowLayout10:setName("flowLayout10");
    obj.flowLayout10:setWidth(96);
    obj.flowLayout10:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.flowLayout10);
    obj.edit8:setText("Multiplicador");
    obj.edit8:setName("edit8");
    obj.edit8:setReadOnly(true);
    obj.edit8:setCanFocus(false);
    obj.edit8:setHorzTextAlign("center");
    obj.edit8:setAlign("client");

    obj.flowLayout11 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout11:setParent(obj.flowLayout2);
    obj.flowLayout11:setName("flowLayout11");
    obj.flowLayout11:setWidth(96);
    obj.flowLayout11:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit9 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.flowLayout11);
    obj.edit9:setText("Extra");
    obj.edit9:setName("edit9");
    obj.edit9:setReadOnly(true);
    obj.edit9:setCanFocus(false);
    obj.edit9:setHorzTextAlign("center");
    obj.edit9:setAlign("client");

    obj.flowLayout12 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout12:setParent(obj.flowLayout2);
    obj.flowLayout12:setName("flowLayout12");
    obj.flowLayout12:setWidth(96);
    obj.flowLayout12:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit10 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.flowLayout12);
    obj.edit10:setText("Total");
    obj.edit10:setName("edit10");
    obj.edit10:setReadOnly(true);
    obj.edit10:setCanFocus(false);
    obj.edit10:setHorzTextAlign("center");
    obj.edit10:setAlign("client");

    obj.flowLayout13 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout13:setParent(obj.flowLayout2);
    obj.flowLayout13:setName("flowLayout13");
    obj.flowLayout13:setWidth(96);
    obj.flowLayout13:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit11 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.flowLayout13);
    obj.edit11:setText("Constituição");
    obj.edit11:setName("edit11");
    obj.edit11:setReadOnly(true);
    obj.edit11:setCanFocus(false);
    obj.edit11:setHorzTextAlign("center");
    obj.edit11:setAlign("client");

    obj.flowLayout14 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout14:setParent(obj.flowLayout2);
    obj.flowLayout14:setName("flowLayout14");
    obj.flowLayout14:setWidth(96);
    obj.flowLayout14:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit12 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.flowLayout14);
    obj.edit12:setType("number");
    obj.edit12:setReadOnly(false);
    obj.edit12:setCanFocus(true);
    obj.edit12:setName("edit12");
    obj.edit12:setHorzTextAlign("center");
    obj.edit12:setAlign("client");

    obj.flowLayout15 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout15:setParent(obj.flowLayout2);
    obj.flowLayout15:setName("flowLayout15");
    obj.flowLayout15:setWidth(96);
    obj.flowLayout15:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit13 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.flowLayout15);
    obj.edit13:setType("number");
    obj.edit13:setReadOnly(false);
    obj.edit13:setCanFocus(true);
    obj.edit13:setName("edit13");
    obj.edit13:setHorzTextAlign("center");
    obj.edit13:setAlign("client");

    obj.flowLayout16 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout16:setParent(obj.flowLayout2);
    obj.flowLayout16:setName("flowLayout16");
    obj.flowLayout16:setWidth(96);
    obj.flowLayout16:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit14 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.flowLayout16);
    obj.edit14:setType("number");
    obj.edit14:setReadOnly(false);
    obj.edit14:setCanFocus(true);
    obj.edit14:setName("edit14");
    obj.edit14:setHorzTextAlign("center");
    obj.edit14:setAlign("client");

    obj.flowLayout17 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout17:setParent(obj.flowLayout2);
    obj.flowLayout17:setName("flowLayout17");
    obj.flowLayout17:setWidth(96);
    obj.flowLayout17:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit15 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj.flowLayout17);
    obj.edit15:setType("number");
    obj.edit15:setReadOnly(false);
    obj.edit15:setCanFocus(true);
    obj.edit15:setName("edit15");
    obj.edit15:setHorzTextAlign("center");
    obj.edit15:setAlign("client");

    obj.flowLayout18 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout18:setParent(obj.flowLayout2);
    obj.flowLayout18:setName("flowLayout18");
    obj.flowLayout18:setWidth(96);
    obj.flowLayout18:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit16 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj.flowLayout18);
    obj.edit16:setType("number");
    obj.edit16:setReadOnly(false);
    obj.edit16:setCanFocus(true);
    obj.edit16:setName("edit16");
    obj.edit16:setHorzTextAlign("center");
    obj.edit16:setAlign("client");

    obj.flowLayout19 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout19:setParent(obj.flowLayout2);
    obj.flowLayout19:setName("flowLayout19");
    obj.flowLayout19:setWidth(96);
    obj.flowLayout19:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit17 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit17:setParent(obj.flowLayout19);
    obj.edit17:setType("number");
    obj.edit17:setReadOnly(true);
    obj.edit17:setCanFocus(false);
    obj.edit17:setName("edit17");
    obj.edit17:setHorzTextAlign("center");
    obj.edit17:setAlign("client");

    obj.flowLayout20 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout20:setParent(obj.flowLayout2);
    obj.flowLayout20:setName("flowLayout20");
    obj.flowLayout20:setWidth(96);
    obj.flowLayout20:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit18 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit18:setParent(obj.flowLayout20);
    obj.edit18:setType("number");
    obj.edit18:setReadOnly(false);
    obj.edit18:setCanFocus(true);
    obj.edit18:setName("edit18");
    obj.edit18:setHorzTextAlign("center");
    obj.edit18:setAlign("client");

    obj.flowLayout21 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout21:setParent(obj.flowLayout2);
    obj.flowLayout21:setName("flowLayout21");
    obj.flowLayout21:setWidth(96);
    obj.flowLayout21:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit19 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit19:setParent(obj.flowLayout21);
    obj.edit19:setType("number");
    obj.edit19:setReadOnly(false);
    obj.edit19:setCanFocus(true);
    obj.edit19:setName("edit19");
    obj.edit19:setHorzTextAlign("center");
    obj.edit19:setAlign("client");

    obj.flowLayout22 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout22:setParent(obj.flowLayout2);
    obj.flowLayout22:setName("flowLayout22");
    obj.flowLayout22:setWidth(96);
    obj.flowLayout22:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit20 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit20:setParent(obj.flowLayout22);
    obj.edit20:setType("number");
    obj.edit20:setReadOnly(true);
    obj.edit20:setCanFocus(false);
    obj.edit20:setName("edit20");
    obj.edit20:setHorzTextAlign("center");
    obj.edit20:setAlign("client");

    obj.flowLayout23 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout23:setParent(obj.flowLayout2);
    obj.flowLayout23:setName("flowLayout23");
    obj.flowLayout23:setWidth(96);
    obj.flowLayout23:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit21 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit21:setParent(obj.flowLayout23);
    obj.edit21:setText("Força");
    obj.edit21:setName("edit21");
    obj.edit21:setReadOnly(true);
    obj.edit21:setCanFocus(false);
    obj.edit21:setHorzTextAlign("center");
    obj.edit21:setAlign("client");

    obj.flowLayout24 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout24:setParent(obj.flowLayout2);
    obj.flowLayout24:setName("flowLayout24");
    obj.flowLayout24:setWidth(96);
    obj.flowLayout24:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit22 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit22:setParent(obj.flowLayout24);
    obj.edit22:setType("number");
    obj.edit22:setReadOnly(false);
    obj.edit22:setCanFocus(true);
    obj.edit22:setName("edit22");
    obj.edit22:setHorzTextAlign("center");
    obj.edit22:setAlign("client");

    obj.flowLayout25 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout25:setParent(obj.flowLayout2);
    obj.flowLayout25:setName("flowLayout25");
    obj.flowLayout25:setWidth(96);
    obj.flowLayout25:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit23 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit23:setParent(obj.flowLayout25);
    obj.edit23:setType("number");
    obj.edit23:setReadOnly(false);
    obj.edit23:setCanFocus(true);
    obj.edit23:setName("edit23");
    obj.edit23:setHorzTextAlign("center");
    obj.edit23:setAlign("client");

    obj.flowLayout26 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout26:setParent(obj.flowLayout2);
    obj.flowLayout26:setName("flowLayout26");
    obj.flowLayout26:setWidth(96);
    obj.flowLayout26:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit24 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit24:setParent(obj.flowLayout26);
    obj.edit24:setType("number");
    obj.edit24:setReadOnly(false);
    obj.edit24:setCanFocus(true);
    obj.edit24:setName("edit24");
    obj.edit24:setHorzTextAlign("center");
    obj.edit24:setAlign("client");

    obj.flowLayout27 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout27:setParent(obj.flowLayout2);
    obj.flowLayout27:setName("flowLayout27");
    obj.flowLayout27:setWidth(96);
    obj.flowLayout27:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit25 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit25:setParent(obj.flowLayout27);
    obj.edit25:setType("number");
    obj.edit25:setReadOnly(false);
    obj.edit25:setCanFocus(true);
    obj.edit25:setName("edit25");
    obj.edit25:setHorzTextAlign("center");
    obj.edit25:setAlign("client");

    obj.flowLayout28 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout28:setParent(obj.flowLayout2);
    obj.flowLayout28:setName("flowLayout28");
    obj.flowLayout28:setWidth(96);
    obj.flowLayout28:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit26 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit26:setParent(obj.flowLayout28);
    obj.edit26:setType("number");
    obj.edit26:setReadOnly(false);
    obj.edit26:setCanFocus(true);
    obj.edit26:setName("edit26");
    obj.edit26:setHorzTextAlign("center");
    obj.edit26:setAlign("client");

    obj.flowLayout29 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout29:setParent(obj.flowLayout2);
    obj.flowLayout29:setName("flowLayout29");
    obj.flowLayout29:setWidth(96);
    obj.flowLayout29:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit27 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit27:setParent(obj.flowLayout29);
    obj.edit27:setType("number");
    obj.edit27:setReadOnly(true);
    obj.edit27:setCanFocus(false);
    obj.edit27:setName("edit27");
    obj.edit27:setHorzTextAlign("center");
    obj.edit27:setAlign("client");

    obj.flowLayout30 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout30:setParent(obj.flowLayout2);
    obj.flowLayout30:setName("flowLayout30");
    obj.flowLayout30:setWidth(96);
    obj.flowLayout30:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit28 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit28:setParent(obj.flowLayout30);
    obj.edit28:setType("number");
    obj.edit28:setReadOnly(false);
    obj.edit28:setCanFocus(true);
    obj.edit28:setName("edit28");
    obj.edit28:setHorzTextAlign("center");
    obj.edit28:setAlign("client");

    obj.flowLayout31 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout31:setParent(obj.flowLayout2);
    obj.flowLayout31:setName("flowLayout31");
    obj.flowLayout31:setWidth(96);
    obj.flowLayout31:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit29 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit29:setParent(obj.flowLayout31);
    obj.edit29:setType("number");
    obj.edit29:setReadOnly(false);
    obj.edit29:setCanFocus(true);
    obj.edit29:setName("edit29");
    obj.edit29:setHorzTextAlign("center");
    obj.edit29:setAlign("client");

    obj.flowLayout32 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout32:setParent(obj.flowLayout2);
    obj.flowLayout32:setName("flowLayout32");
    obj.flowLayout32:setWidth(96);
    obj.flowLayout32:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit30 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit30:setParent(obj.flowLayout32);
    obj.edit30:setType("number");
    obj.edit30:setReadOnly(true);
    obj.edit30:setCanFocus(false);
    obj.edit30:setName("edit30");
    obj.edit30:setHorzTextAlign("center");
    obj.edit30:setAlign("client");

    obj.flowLayout33 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout33:setParent(obj.flowLayout2);
    obj.flowLayout33:setName("flowLayout33");
    obj.flowLayout33:setWidth(96);
    obj.flowLayout33:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit31 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit31:setParent(obj.flowLayout33);
    obj.edit31:setText("Destreza");
    obj.edit31:setName("edit31");
    obj.edit31:setReadOnly(true);
    obj.edit31:setCanFocus(false);
    obj.edit31:setHorzTextAlign("center");
    obj.edit31:setAlign("client");

    obj.flowLayout34 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout34:setParent(obj.flowLayout2);
    obj.flowLayout34:setName("flowLayout34");
    obj.flowLayout34:setWidth(96);
    obj.flowLayout34:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit32 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit32:setParent(obj.flowLayout34);
    obj.edit32:setType("number");
    obj.edit32:setReadOnly(false);
    obj.edit32:setCanFocus(true);
    obj.edit32:setName("edit32");
    obj.edit32:setHorzTextAlign("center");
    obj.edit32:setAlign("client");

    obj.flowLayout35 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout35:setParent(obj.flowLayout2);
    obj.flowLayout35:setName("flowLayout35");
    obj.flowLayout35:setWidth(96);
    obj.flowLayout35:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit33 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit33:setParent(obj.flowLayout35);
    obj.edit33:setType("number");
    obj.edit33:setReadOnly(false);
    obj.edit33:setCanFocus(true);
    obj.edit33:setName("edit33");
    obj.edit33:setHorzTextAlign("center");
    obj.edit33:setAlign("client");

    obj.flowLayout36 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout36:setParent(obj.flowLayout2);
    obj.flowLayout36:setName("flowLayout36");
    obj.flowLayout36:setWidth(96);
    obj.flowLayout36:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit34 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit34:setParent(obj.flowLayout36);
    obj.edit34:setType("number");
    obj.edit34:setReadOnly(false);
    obj.edit34:setCanFocus(true);
    obj.edit34:setName("edit34");
    obj.edit34:setHorzTextAlign("center");
    obj.edit34:setAlign("client");

    obj.flowLayout37 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout37:setParent(obj.flowLayout2);
    obj.flowLayout37:setName("flowLayout37");
    obj.flowLayout37:setWidth(96);
    obj.flowLayout37:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit35 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit35:setParent(obj.flowLayout37);
    obj.edit35:setType("number");
    obj.edit35:setReadOnly(false);
    obj.edit35:setCanFocus(true);
    obj.edit35:setName("edit35");
    obj.edit35:setHorzTextAlign("center");
    obj.edit35:setAlign("client");

    obj.flowLayout38 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout38:setParent(obj.flowLayout2);
    obj.flowLayout38:setName("flowLayout38");
    obj.flowLayout38:setWidth(96);
    obj.flowLayout38:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit36 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit36:setParent(obj.flowLayout38);
    obj.edit36:setType("number");
    obj.edit36:setReadOnly(false);
    obj.edit36:setCanFocus(true);
    obj.edit36:setName("edit36");
    obj.edit36:setHorzTextAlign("center");
    obj.edit36:setAlign("client");

    obj.flowLayout39 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout39:setParent(obj.flowLayout2);
    obj.flowLayout39:setName("flowLayout39");
    obj.flowLayout39:setWidth(96);
    obj.flowLayout39:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit37 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit37:setParent(obj.flowLayout39);
    obj.edit37:setType("number");
    obj.edit37:setReadOnly(true);
    obj.edit37:setCanFocus(false);
    obj.edit37:setName("edit37");
    obj.edit37:setHorzTextAlign("center");
    obj.edit37:setAlign("client");

    obj.flowLayout40 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout40:setParent(obj.flowLayout2);
    obj.flowLayout40:setName("flowLayout40");
    obj.flowLayout40:setWidth(96);
    obj.flowLayout40:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit38 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit38:setParent(obj.flowLayout40);
    obj.edit38:setType("number");
    obj.edit38:setReadOnly(false);
    obj.edit38:setCanFocus(true);
    obj.edit38:setName("edit38");
    obj.edit38:setHorzTextAlign("center");
    obj.edit38:setAlign("client");

    obj.flowLayout41 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout41:setParent(obj.flowLayout2);
    obj.flowLayout41:setName("flowLayout41");
    obj.flowLayout41:setWidth(96);
    obj.flowLayout41:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit39 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit39:setParent(obj.flowLayout41);
    obj.edit39:setType("number");
    obj.edit39:setReadOnly(false);
    obj.edit39:setCanFocus(true);
    obj.edit39:setName("edit39");
    obj.edit39:setHorzTextAlign("center");
    obj.edit39:setAlign("client");

    obj.flowLayout42 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout42:setParent(obj.flowLayout2);
    obj.flowLayout42:setName("flowLayout42");
    obj.flowLayout42:setWidth(96);
    obj.flowLayout42:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit40 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit40:setParent(obj.flowLayout42);
    obj.edit40:setType("number");
    obj.edit40:setReadOnly(true);
    obj.edit40:setCanFocus(false);
    obj.edit40:setName("edit40");
    obj.edit40:setHorzTextAlign("center");
    obj.edit40:setAlign("client");

    obj.flowLayout43 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout43:setParent(obj.flowLayout2);
    obj.flowLayout43:setName("flowLayout43");
    obj.flowLayout43:setWidth(96);
    obj.flowLayout43:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit41 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit41:setParent(obj.flowLayout43);
    obj.edit41:setText("Carisma");
    obj.edit41:setName("edit41");
    obj.edit41:setReadOnly(true);
    obj.edit41:setCanFocus(false);
    obj.edit41:setHorzTextAlign("center");
    obj.edit41:setAlign("client");

    obj.flowLayout44 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout44:setParent(obj.flowLayout2);
    obj.flowLayout44:setName("flowLayout44");
    obj.flowLayout44:setWidth(96);
    obj.flowLayout44:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit42 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit42:setParent(obj.flowLayout44);
    obj.edit42:setType("number");
    obj.edit42:setReadOnly(false);
    obj.edit42:setCanFocus(true);
    obj.edit42:setName("edit42");
    obj.edit42:setHorzTextAlign("center");
    obj.edit42:setAlign("client");

    obj.flowLayout45 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout45:setParent(obj.flowLayout2);
    obj.flowLayout45:setName("flowLayout45");
    obj.flowLayout45:setWidth(96);
    obj.flowLayout45:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit43 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit43:setParent(obj.flowLayout45);
    obj.edit43:setType("number");
    obj.edit43:setReadOnly(false);
    obj.edit43:setCanFocus(true);
    obj.edit43:setName("edit43");
    obj.edit43:setHorzTextAlign("center");
    obj.edit43:setAlign("client");

    obj.flowLayout46 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout46:setParent(obj.flowLayout2);
    obj.flowLayout46:setName("flowLayout46");
    obj.flowLayout46:setWidth(96);
    obj.flowLayout46:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit44 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit44:setParent(obj.flowLayout46);
    obj.edit44:setType("number");
    obj.edit44:setReadOnly(false);
    obj.edit44:setCanFocus(true);
    obj.edit44:setName("edit44");
    obj.edit44:setHorzTextAlign("center");
    obj.edit44:setAlign("client");

    obj.flowLayout47 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout47:setParent(obj.flowLayout2);
    obj.flowLayout47:setName("flowLayout47");
    obj.flowLayout47:setWidth(96);
    obj.flowLayout47:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit45 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit45:setParent(obj.flowLayout47);
    obj.edit45:setType("number");
    obj.edit45:setReadOnly(false);
    obj.edit45:setCanFocus(true);
    obj.edit45:setName("edit45");
    obj.edit45:setHorzTextAlign("center");
    obj.edit45:setAlign("client");

    obj.flowLayout48 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout48:setParent(obj.flowLayout2);
    obj.flowLayout48:setName("flowLayout48");
    obj.flowLayout48:setWidth(96);
    obj.flowLayout48:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit46 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit46:setParent(obj.flowLayout48);
    obj.edit46:setType("number");
    obj.edit46:setReadOnly(false);
    obj.edit46:setCanFocus(true);
    obj.edit46:setName("edit46");
    obj.edit46:setHorzTextAlign("center");
    obj.edit46:setAlign("client");

    obj.flowLayout49 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout49:setParent(obj.flowLayout2);
    obj.flowLayout49:setName("flowLayout49");
    obj.flowLayout49:setWidth(96);
    obj.flowLayout49:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit47 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit47:setParent(obj.flowLayout49);
    obj.edit47:setType("number");
    obj.edit47:setReadOnly(true);
    obj.edit47:setCanFocus(false);
    obj.edit47:setName("edit47");
    obj.edit47:setHorzTextAlign("center");
    obj.edit47:setAlign("client");

    obj.flowLayout50 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout50:setParent(obj.flowLayout2);
    obj.flowLayout50:setName("flowLayout50");
    obj.flowLayout50:setWidth(96);
    obj.flowLayout50:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit48 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit48:setParent(obj.flowLayout50);
    obj.edit48:setType("number");
    obj.edit48:setReadOnly(false);
    obj.edit48:setCanFocus(true);
    obj.edit48:setName("edit48");
    obj.edit48:setHorzTextAlign("center");
    obj.edit48:setAlign("client");

    obj.flowLayout51 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout51:setParent(obj.flowLayout2);
    obj.flowLayout51:setName("flowLayout51");
    obj.flowLayout51:setWidth(96);
    obj.flowLayout51:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit49 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit49:setParent(obj.flowLayout51);
    obj.edit49:setType("number");
    obj.edit49:setReadOnly(false);
    obj.edit49:setCanFocus(true);
    obj.edit49:setName("edit49");
    obj.edit49:setHorzTextAlign("center");
    obj.edit49:setAlign("client");

    obj.flowLayout52 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout52:setParent(obj.flowLayout2);
    obj.flowLayout52:setName("flowLayout52");
    obj.flowLayout52:setWidth(96);
    obj.flowLayout52:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit50 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit50:setParent(obj.flowLayout52);
    obj.edit50:setType("number");
    obj.edit50:setReadOnly(true);
    obj.edit50:setCanFocus(false);
    obj.edit50:setName("edit50");
    obj.edit50:setHorzTextAlign("center");
    obj.edit50:setAlign("client");

    obj.flowLayout53 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout53:setParent(obj.flowLayout2);
    obj.flowLayout53:setName("flowLayout53");
    obj.flowLayout53:setWidth(96);
    obj.flowLayout53:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit51 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit51:setParent(obj.flowLayout53);
    obj.edit51:setText("Inteligência");
    obj.edit51:setName("edit51");
    obj.edit51:setReadOnly(true);
    obj.edit51:setCanFocus(false);
    obj.edit51:setHorzTextAlign("center");
    obj.edit51:setAlign("client");

    obj.flowLayout54 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout54:setParent(obj.flowLayout2);
    obj.flowLayout54:setName("flowLayout54");
    obj.flowLayout54:setWidth(96);
    obj.flowLayout54:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit52 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit52:setParent(obj.flowLayout54);
    obj.edit52:setType("number");
    obj.edit52:setReadOnly(false);
    obj.edit52:setCanFocus(true);
    obj.edit52:setName("edit52");
    obj.edit52:setHorzTextAlign("center");
    obj.edit52:setAlign("client");

    obj.flowLayout55 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout55:setParent(obj.flowLayout2);
    obj.flowLayout55:setName("flowLayout55");
    obj.flowLayout55:setWidth(96);
    obj.flowLayout55:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit53 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit53:setParent(obj.flowLayout55);
    obj.edit53:setType("number");
    obj.edit53:setReadOnly(false);
    obj.edit53:setCanFocus(true);
    obj.edit53:setName("edit53");
    obj.edit53:setHorzTextAlign("center");
    obj.edit53:setAlign("client");

    obj.flowLayout56 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout56:setParent(obj.flowLayout2);
    obj.flowLayout56:setName("flowLayout56");
    obj.flowLayout56:setWidth(96);
    obj.flowLayout56:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit54 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit54:setParent(obj.flowLayout56);
    obj.edit54:setType("number");
    obj.edit54:setReadOnly(false);
    obj.edit54:setCanFocus(true);
    obj.edit54:setName("edit54");
    obj.edit54:setHorzTextAlign("center");
    obj.edit54:setAlign("client");

    obj.flowLayout57 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout57:setParent(obj.flowLayout2);
    obj.flowLayout57:setName("flowLayout57");
    obj.flowLayout57:setWidth(96);
    obj.flowLayout57:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit55 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit55:setParent(obj.flowLayout57);
    obj.edit55:setType("number");
    obj.edit55:setReadOnly(false);
    obj.edit55:setCanFocus(true);
    obj.edit55:setName("edit55");
    obj.edit55:setHorzTextAlign("center");
    obj.edit55:setAlign("client");

    obj.flowLayout58 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout58:setParent(obj.flowLayout2);
    obj.flowLayout58:setName("flowLayout58");
    obj.flowLayout58:setWidth(96);
    obj.flowLayout58:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit56 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit56:setParent(obj.flowLayout58);
    obj.edit56:setType("number");
    obj.edit56:setReadOnly(false);
    obj.edit56:setCanFocus(true);
    obj.edit56:setName("edit56");
    obj.edit56:setHorzTextAlign("center");
    obj.edit56:setAlign("client");

    obj.flowLayout59 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout59:setParent(obj.flowLayout2);
    obj.flowLayout59:setName("flowLayout59");
    obj.flowLayout59:setWidth(96);
    obj.flowLayout59:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit57 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit57:setParent(obj.flowLayout59);
    obj.edit57:setType("number");
    obj.edit57:setReadOnly(true);
    obj.edit57:setCanFocus(false);
    obj.edit57:setName("edit57");
    obj.edit57:setHorzTextAlign("center");
    obj.edit57:setAlign("client");

    obj.flowLayout60 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout60:setParent(obj.flowLayout2);
    obj.flowLayout60:setName("flowLayout60");
    obj.flowLayout60:setWidth(96);
    obj.flowLayout60:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit58 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit58:setParent(obj.flowLayout60);
    obj.edit58:setType("number");
    obj.edit58:setReadOnly(false);
    obj.edit58:setCanFocus(true);
    obj.edit58:setName("edit58");
    obj.edit58:setHorzTextAlign("center");
    obj.edit58:setAlign("client");

    obj.flowLayout61 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout61:setParent(obj.flowLayout2);
    obj.flowLayout61:setName("flowLayout61");
    obj.flowLayout61:setWidth(96);
    obj.flowLayout61:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit59 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit59:setParent(obj.flowLayout61);
    obj.edit59:setType("number");
    obj.edit59:setReadOnly(false);
    obj.edit59:setCanFocus(true);
    obj.edit59:setName("edit59");
    obj.edit59:setHorzTextAlign("center");
    obj.edit59:setAlign("client");

    obj.flowLayout62 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout62:setParent(obj.flowLayout2);
    obj.flowLayout62:setName("flowLayout62");
    obj.flowLayout62:setWidth(96);
    obj.flowLayout62:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit60 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit60:setParent(obj.flowLayout62);
    obj.edit60:setType("number");
    obj.edit60:setReadOnly(true);
    obj.edit60:setCanFocus(false);
    obj.edit60:setName("edit60");
    obj.edit60:setHorzTextAlign("center");
    obj.edit60:setAlign("client");

    obj.flowLayout63 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout63:setParent(obj.flowLayout2);
    obj.flowLayout63:setName("flowLayout63");
    obj.flowLayout63:setWidth(96);
    obj.flowLayout63:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit61 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit61:setParent(obj.flowLayout63);
    obj.edit61:setText("Sabedoria");
    obj.edit61:setName("edit61");
    obj.edit61:setReadOnly(true);
    obj.edit61:setCanFocus(false);
    obj.edit61:setHorzTextAlign("center");
    obj.edit61:setAlign("client");

    obj.flowLayout64 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout64:setParent(obj.flowLayout2);
    obj.flowLayout64:setName("flowLayout64");
    obj.flowLayout64:setWidth(96);
    obj.flowLayout64:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit62 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit62:setParent(obj.flowLayout64);
    obj.edit62:setType("number");
    obj.edit62:setReadOnly(false);
    obj.edit62:setCanFocus(true);
    obj.edit62:setName("edit62");
    obj.edit62:setHorzTextAlign("center");
    obj.edit62:setAlign("client");

    obj.flowLayout65 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout65:setParent(obj.flowLayout2);
    obj.flowLayout65:setName("flowLayout65");
    obj.flowLayout65:setWidth(96);
    obj.flowLayout65:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit63 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit63:setParent(obj.flowLayout65);
    obj.edit63:setType("number");
    obj.edit63:setReadOnly(false);
    obj.edit63:setCanFocus(true);
    obj.edit63:setName("edit63");
    obj.edit63:setHorzTextAlign("center");
    obj.edit63:setAlign("client");

    obj.flowLayout66 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout66:setParent(obj.flowLayout2);
    obj.flowLayout66:setName("flowLayout66");
    obj.flowLayout66:setWidth(96);
    obj.flowLayout66:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit64 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit64:setParent(obj.flowLayout66);
    obj.edit64:setType("number");
    obj.edit64:setReadOnly(false);
    obj.edit64:setCanFocus(true);
    obj.edit64:setName("edit64");
    obj.edit64:setHorzTextAlign("center");
    obj.edit64:setAlign("client");

    obj.flowLayout67 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout67:setParent(obj.flowLayout2);
    obj.flowLayout67:setName("flowLayout67");
    obj.flowLayout67:setWidth(96);
    obj.flowLayout67:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit65 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit65:setParent(obj.flowLayout67);
    obj.edit65:setType("number");
    obj.edit65:setReadOnly(false);
    obj.edit65:setCanFocus(true);
    obj.edit65:setName("edit65");
    obj.edit65:setHorzTextAlign("center");
    obj.edit65:setAlign("client");

    obj.flowLayout68 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout68:setParent(obj.flowLayout2);
    obj.flowLayout68:setName("flowLayout68");
    obj.flowLayout68:setWidth(96);
    obj.flowLayout68:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit66 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit66:setParent(obj.flowLayout68);
    obj.edit66:setType("number");
    obj.edit66:setReadOnly(false);
    obj.edit66:setCanFocus(true);
    obj.edit66:setName("edit66");
    obj.edit66:setHorzTextAlign("center");
    obj.edit66:setAlign("client");

    obj.flowLayout69 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout69:setParent(obj.flowLayout2);
    obj.flowLayout69:setName("flowLayout69");
    obj.flowLayout69:setWidth(96);
    obj.flowLayout69:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit67 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit67:setParent(obj.flowLayout69);
    obj.edit67:setType("number");
    obj.edit67:setReadOnly(true);
    obj.edit67:setCanFocus(false);
    obj.edit67:setName("edit67");
    obj.edit67:setHorzTextAlign("center");
    obj.edit67:setAlign("client");

    obj.flowLayout70 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout70:setParent(obj.flowLayout2);
    obj.flowLayout70:setName("flowLayout70");
    obj.flowLayout70:setWidth(96);
    obj.flowLayout70:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit68 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit68:setParent(obj.flowLayout70);
    obj.edit68:setType("number");
    obj.edit68:setReadOnly(false);
    obj.edit68:setCanFocus(true);
    obj.edit68:setName("edit68");
    obj.edit68:setHorzTextAlign("center");
    obj.edit68:setAlign("client");

    obj.flowLayout71 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout71:setParent(obj.flowLayout2);
    obj.flowLayout71:setName("flowLayout71");
    obj.flowLayout71:setWidth(96);
    obj.flowLayout71:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit69 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit69:setParent(obj.flowLayout71);
    obj.edit69:setType("number");
    obj.edit69:setReadOnly(false);
    obj.edit69:setCanFocus(true);
    obj.edit69:setName("edit69");
    obj.edit69:setHorzTextAlign("center");
    obj.edit69:setAlign("client");

    obj.flowLayout72 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout72:setParent(obj.flowLayout2);
    obj.flowLayout72:setName("flowLayout72");
    obj.flowLayout72:setWidth(96);
    obj.flowLayout72:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit70 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit70:setParent(obj.flowLayout72);
    obj.edit70:setType("number");
    obj.edit70:setReadOnly(true);
    obj.edit70:setCanFocus(false);
    obj.edit70:setName("edit70");
    obj.edit70:setHorzTextAlign("center");
    obj.edit70:setAlign("client");

    obj.abaVaziaaba1 = GUI.fromHandle(_obj_newObject("tab"));
    obj.abaVaziaaba1:setParent(obj.pgcPrincipal);
    obj.abaVaziaaba1:setName("abaVaziaaba1");
    obj.abaVaziaaba1:setTitle("Perfil");

    obj.rectangle2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.abaVaziaaba1);
    obj.rectangle2:setAlign("client");
    obj.rectangle2:setColor("#40000000");
    obj.rectangle2:setXradius(10);
    obj.rectangle2:setYradius(10);
    obj.rectangle2:setName("rectangle2");

    obj.scrollBox2 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox2:setParent(obj.rectangle2);
    obj.scrollBox2:setAlign("client");
    obj.scrollBox2:setName("scrollBox2");

    obj.richEdit1 = GUI.fromHandle(_obj_newObject("richEdit"));
    obj.richEdit1:setParent(obj.scrollBox2);
    obj.richEdit1:setAlign("client");
    lfm_setPropAsString(obj.richEdit1, "backgroundColor",  "#40000000");
    obj.richEdit1:setField("Perfil");
    obj.richEdit1:setName("richEdit1");

    obj.popupaba1 = GUI.fromHandle(_obj_newObject("popup"));
    obj.popupaba1:setParent(obj.pgcPrincipal);
    obj.popupaba1:setName("popupaba1");
    obj.popupaba1:setWidth(150);
    obj.popupaba1:setHeight(50);
    obj.popupaba1:setBackOpacity(0);

    obj.flowLayout73 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout73:setParent(obj.popupaba1);
    obj.flowLayout73:setWidth(150);
    obj.flowLayout73:setHeight(50);
    obj.flowLayout73:setPadding({top=5,bottom=5,left=5,right=5});
    obj.flowLayout73:setMaxControlsPerLine(2);
    obj.flowLayout73:setName("flowLayout73");

    obj.editaba1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.editaba1:setParent(obj.flowLayout73);
    obj.editaba1:setAlign("top");
    obj.editaba1:setName("editaba1");
    obj.editaba1:setField("editaba1");
    obj.editaba1:setFontSize(10);
    obj.editaba1:setTransparent(true);
    obj.editaba1:setVertTextAlign("center");
    obj.editaba1:setWidth(100);

    obj.okButtonaba1 = GUI.fromHandle(_obj_newObject("button"));
    obj.okButtonaba1:setParent(obj.flowLayout73);
    obj.okButtonaba1:setName("okButtonaba1");
    obj.okButtonaba1:setText("ok");
    obj.okButtonaba1:setWidth(25);
    obj.okButtonaba1:setFontSize(10);

    obj.horzLine1 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine1:setParent(obj.flowLayout73);
    obj.horzLine1:setAlign("top");
    obj.horzLine1:setStrokeColor("#FFFFFF50");
    obj.horzLine1:setStrokeSize(1);
    obj.horzLine1:setWidth(100);
    obj.horzLine1:setName("horzLine1");

    obj.abaVaziaaba2 = GUI.fromHandle(_obj_newObject("tab"));
    obj.abaVaziaaba2:setParent(obj.pgcPrincipal);
    obj.abaVaziaaba2:setName("abaVaziaaba2");
    obj.abaVaziaaba2:setTitle("Habilidades");

    obj.rectangle3 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.abaVaziaaba2);
    obj.rectangle3:setAlign("client");
    obj.rectangle3:setColor("#40000000");
    obj.rectangle3:setXradius(10);
    obj.rectangle3:setYradius(10);
    obj.rectangle3:setName("rectangle3");

    obj.scrollBox3 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox3:setParent(obj.rectangle3);
    obj.scrollBox3:setAlign("client");
    obj.scrollBox3:setName("scrollBox3");

    obj.richEdit2 = GUI.fromHandle(_obj_newObject("richEdit"));
    obj.richEdit2:setParent(obj.scrollBox3);
    obj.richEdit2:setAlign("client");
    lfm_setPropAsString(obj.richEdit2, "backgroundColor",  "#40000000");
    obj.richEdit2:setField("Habilidades");
    obj.richEdit2:setName("richEdit2");

    obj.popupaba2 = GUI.fromHandle(_obj_newObject("popup"));
    obj.popupaba2:setParent(obj.pgcPrincipal);
    obj.popupaba2:setName("popupaba2");
    obj.popupaba2:setWidth(150);
    obj.popupaba2:setHeight(50);
    obj.popupaba2:setBackOpacity(0);

    obj.flowLayout74 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout74:setParent(obj.popupaba2);
    obj.flowLayout74:setWidth(150);
    obj.flowLayout74:setHeight(50);
    obj.flowLayout74:setPadding({top=5,bottom=5,left=5,right=5});
    obj.flowLayout74:setMaxControlsPerLine(2);
    obj.flowLayout74:setName("flowLayout74");

    obj.editaba2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.editaba2:setParent(obj.flowLayout74);
    obj.editaba2:setAlign("top");
    obj.editaba2:setName("editaba2");
    obj.editaba2:setField("editaba2");
    obj.editaba2:setFontSize(10);
    obj.editaba2:setTransparent(true);
    obj.editaba2:setVertTextAlign("center");
    obj.editaba2:setWidth(100);

    obj.okButtonaba2 = GUI.fromHandle(_obj_newObject("button"));
    obj.okButtonaba2:setParent(obj.flowLayout74);
    obj.okButtonaba2:setName("okButtonaba2");
    obj.okButtonaba2:setText("ok");
    obj.okButtonaba2:setWidth(25);
    obj.okButtonaba2:setFontSize(10);

    obj.horzLine2 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine2:setParent(obj.flowLayout74);
    obj.horzLine2:setAlign("top");
    obj.horzLine2:setStrokeColor("#FFFFFF50");
    obj.horzLine2:setStrokeSize(1);
    obj.horzLine2:setWidth(100);
    obj.horzLine2:setName("horzLine2");

    obj.abaVaziaaba3 = GUI.fromHandle(_obj_newObject("tab"));
    obj.abaVaziaaba3:setParent(obj.pgcPrincipal);
    obj.abaVaziaaba3:setName("abaVaziaaba3");
    obj.abaVaziaaba3:setTitle("Inventário");

    obj.rectangle4 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.abaVaziaaba3);
    obj.rectangle4:setAlign("client");
    obj.rectangle4:setColor("#40000000");
    obj.rectangle4:setXradius(10);
    obj.rectangle4:setYradius(10);
    obj.rectangle4:setName("rectangle4");

    obj.scrollBox4 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox4:setParent(obj.rectangle4);
    obj.scrollBox4:setAlign("client");
    obj.scrollBox4:setName("scrollBox4");

    obj.richEdit3 = GUI.fromHandle(_obj_newObject("richEdit"));
    obj.richEdit3:setParent(obj.scrollBox4);
    obj.richEdit3:setAlign("client");
    lfm_setPropAsString(obj.richEdit3, "backgroundColor",  "#40000000");
    obj.richEdit3:setField("Inventário");
    obj.richEdit3:setName("richEdit3");

    obj.popupaba3 = GUI.fromHandle(_obj_newObject("popup"));
    obj.popupaba3:setParent(obj.pgcPrincipal);
    obj.popupaba3:setName("popupaba3");
    obj.popupaba3:setWidth(150);
    obj.popupaba3:setHeight(50);
    obj.popupaba3:setBackOpacity(0);

    obj.flowLayout75 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout75:setParent(obj.popupaba3);
    obj.flowLayout75:setWidth(150);
    obj.flowLayout75:setHeight(50);
    obj.flowLayout75:setPadding({top=5,bottom=5,left=5,right=5});
    obj.flowLayout75:setMaxControlsPerLine(2);
    obj.flowLayout75:setName("flowLayout75");

    obj.editaba3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.editaba3:setParent(obj.flowLayout75);
    obj.editaba3:setAlign("top");
    obj.editaba3:setName("editaba3");
    obj.editaba3:setField("editaba3");
    obj.editaba3:setFontSize(10);
    obj.editaba3:setTransparent(true);
    obj.editaba3:setVertTextAlign("center");
    obj.editaba3:setWidth(100);

    obj.okButtonaba3 = GUI.fromHandle(_obj_newObject("button"));
    obj.okButtonaba3:setParent(obj.flowLayout75);
    obj.okButtonaba3:setName("okButtonaba3");
    obj.okButtonaba3:setText("ok");
    obj.okButtonaba3:setWidth(25);
    obj.okButtonaba3:setFontSize(10);

    obj.horzLine3 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine3:setParent(obj.flowLayout75);
    obj.horzLine3:setAlign("top");
    obj.horzLine3:setStrokeColor("#FFFFFF50");
    obj.horzLine3:setStrokeSize(1);
    obj.horzLine3:setWidth(100);
    obj.horzLine3:setName("horzLine3");

    obj.abaVaziaaba4 = GUI.fromHandle(_obj_newObject("tab"));
    obj.abaVaziaaba4:setParent(obj.pgcPrincipal);
    obj.abaVaziaaba4:setName("abaVaziaaba4");
    obj.abaVaziaaba4:setTitle("Outros Itens");

    obj.rectangle5 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.abaVaziaaba4);
    obj.rectangle5:setAlign("client");
    obj.rectangle5:setColor("#40000000");
    obj.rectangle5:setXradius(10);
    obj.rectangle5:setYradius(10);
    obj.rectangle5:setName("rectangle5");

    obj.scrollBox5 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox5:setParent(obj.rectangle5);
    obj.scrollBox5:setAlign("client");
    obj.scrollBox5:setName("scrollBox5");

    obj.richEdit4 = GUI.fromHandle(_obj_newObject("richEdit"));
    obj.richEdit4:setParent(obj.scrollBox5);
    obj.richEdit4:setAlign("client");
    lfm_setPropAsString(obj.richEdit4, "backgroundColor",  "#40000000");
    obj.richEdit4:setField("Outros Itens");
    obj.richEdit4:setName("richEdit4");

    obj.popupaba4 = GUI.fromHandle(_obj_newObject("popup"));
    obj.popupaba4:setParent(obj.pgcPrincipal);
    obj.popupaba4:setName("popupaba4");
    obj.popupaba4:setWidth(150);
    obj.popupaba4:setHeight(50);
    obj.popupaba4:setBackOpacity(0);

    obj.flowLayout76 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout76:setParent(obj.popupaba4);
    obj.flowLayout76:setWidth(150);
    obj.flowLayout76:setHeight(50);
    obj.flowLayout76:setPadding({top=5,bottom=5,left=5,right=5});
    obj.flowLayout76:setMaxControlsPerLine(2);
    obj.flowLayout76:setName("flowLayout76");

    obj.editaba4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.editaba4:setParent(obj.flowLayout76);
    obj.editaba4:setAlign("top");
    obj.editaba4:setName("editaba4");
    obj.editaba4:setField("editaba4");
    obj.editaba4:setFontSize(10);
    obj.editaba4:setTransparent(true);
    obj.editaba4:setVertTextAlign("center");
    obj.editaba4:setWidth(100);

    obj.okButtonaba4 = GUI.fromHandle(_obj_newObject("button"));
    obj.okButtonaba4:setParent(obj.flowLayout76);
    obj.okButtonaba4:setName("okButtonaba4");
    obj.okButtonaba4:setText("ok");
    obj.okButtonaba4:setWidth(25);
    obj.okButtonaba4:setFontSize(10);

    obj.horzLine4 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine4:setParent(obj.flowLayout76);
    obj.horzLine4:setAlign("top");
    obj.horzLine4:setStrokeColor("#FFFFFF50");
    obj.horzLine4:setStrokeSize(1);
    obj.horzLine4:setWidth(100);
    obj.horzLine4:setName("horzLine4");

    obj.abaVaziaaba5 = GUI.fromHandle(_obj_newObject("tab"));
    obj.abaVaziaaba5:setParent(obj.pgcPrincipal);
    obj.abaVaziaaba5:setName("abaVaziaaba5");
    obj.abaVaziaaba5:setTitle("NPC's");

    obj.rectangle6 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.abaVaziaaba5);
    obj.rectangle6:setAlign("client");
    obj.rectangle6:setColor("#40000000");
    obj.rectangle6:setXradius(10);
    obj.rectangle6:setYradius(10);
    obj.rectangle6:setName("rectangle6");

    obj.scrollBox6 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox6:setParent(obj.rectangle6);
    obj.scrollBox6:setAlign("client");
    obj.scrollBox6:setName("scrollBox6");

    obj.richEdit5 = GUI.fromHandle(_obj_newObject("richEdit"));
    obj.richEdit5:setParent(obj.scrollBox6);
    obj.richEdit5:setAlign("client");
    lfm_setPropAsString(obj.richEdit5, "backgroundColor",  "#40000000");
    obj.richEdit5:setField("NPC's");
    obj.richEdit5:setName("richEdit5");

    obj.popupaba5 = GUI.fromHandle(_obj_newObject("popup"));
    obj.popupaba5:setParent(obj.pgcPrincipal);
    obj.popupaba5:setName("popupaba5");
    obj.popupaba5:setWidth(150);
    obj.popupaba5:setHeight(50);
    obj.popupaba5:setBackOpacity(0);

    obj.flowLayout77 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout77:setParent(obj.popupaba5);
    obj.flowLayout77:setWidth(150);
    obj.flowLayout77:setHeight(50);
    obj.flowLayout77:setPadding({top=5,bottom=5,left=5,right=5});
    obj.flowLayout77:setMaxControlsPerLine(2);
    obj.flowLayout77:setName("flowLayout77");

    obj.editaba5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.editaba5:setParent(obj.flowLayout77);
    obj.editaba5:setAlign("top");
    obj.editaba5:setName("editaba5");
    obj.editaba5:setField("editaba5");
    obj.editaba5:setFontSize(10);
    obj.editaba5:setTransparent(true);
    obj.editaba5:setVertTextAlign("center");
    obj.editaba5:setWidth(100);

    obj.okButtonaba5 = GUI.fromHandle(_obj_newObject("button"));
    obj.okButtonaba5:setParent(obj.flowLayout77);
    obj.okButtonaba5:setName("okButtonaba5");
    obj.okButtonaba5:setText("ok");
    obj.okButtonaba5:setWidth(25);
    obj.okButtonaba5:setFontSize(10);

    obj.horzLine5 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine5:setParent(obj.flowLayout77);
    obj.horzLine5:setAlign("top");
    obj.horzLine5:setStrokeColor("#FFFFFF50");
    obj.horzLine5:setStrokeSize(1);
    obj.horzLine5:setWidth(100);
    obj.horzLine5:setName("horzLine5");

    obj.abaVaziaaba6 = GUI.fromHandle(_obj_newObject("tab"));
    obj.abaVaziaaba6:setParent(obj.pgcPrincipal);
    obj.abaVaziaaba6:setName("abaVaziaaba6");
    obj.abaVaziaaba6:setTitle("Anotações");

    obj.rectangle7 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle7:setParent(obj.abaVaziaaba6);
    obj.rectangle7:setAlign("client");
    obj.rectangle7:setColor("#40000000");
    obj.rectangle7:setXradius(10);
    obj.rectangle7:setYradius(10);
    obj.rectangle7:setName("rectangle7");

    obj.scrollBox7 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox7:setParent(obj.rectangle7);
    obj.scrollBox7:setAlign("client");
    obj.scrollBox7:setName("scrollBox7");

    obj.richEdit6 = GUI.fromHandle(_obj_newObject("richEdit"));
    obj.richEdit6:setParent(obj.scrollBox7);
    obj.richEdit6:setAlign("client");
    lfm_setPropAsString(obj.richEdit6, "backgroundColor",  "#40000000");
    obj.richEdit6:setField("Anotações");
    obj.richEdit6:setName("richEdit6");

    obj.popupaba6 = GUI.fromHandle(_obj_newObject("popup"));
    obj.popupaba6:setParent(obj.pgcPrincipal);
    obj.popupaba6:setName("popupaba6");
    obj.popupaba6:setWidth(150);
    obj.popupaba6:setHeight(50);
    obj.popupaba6:setBackOpacity(0);

    obj.flowLayout78 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout78:setParent(obj.popupaba6);
    obj.flowLayout78:setWidth(150);
    obj.flowLayout78:setHeight(50);
    obj.flowLayout78:setPadding({top=5,bottom=5,left=5,right=5});
    obj.flowLayout78:setMaxControlsPerLine(2);
    obj.flowLayout78:setName("flowLayout78");

    obj.editaba6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.editaba6:setParent(obj.flowLayout78);
    obj.editaba6:setAlign("top");
    obj.editaba6:setName("editaba6");
    obj.editaba6:setField("editaba6");
    obj.editaba6:setFontSize(10);
    obj.editaba6:setTransparent(true);
    obj.editaba6:setVertTextAlign("center");
    obj.editaba6:setWidth(100);

    obj.okButtonaba6 = GUI.fromHandle(_obj_newObject("button"));
    obj.okButtonaba6:setParent(obj.flowLayout78);
    obj.okButtonaba6:setName("okButtonaba6");
    obj.okButtonaba6:setText("ok");
    obj.okButtonaba6:setWidth(25);
    obj.okButtonaba6:setFontSize(10);

    obj.horzLine6 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine6:setParent(obj.flowLayout78);
    obj.horzLine6:setAlign("top");
    obj.horzLine6:setStrokeColor("#FFFFFF50");
    obj.horzLine6:setStrokeSize(1);
    obj.horzLine6:setWidth(100);
    obj.horzLine6:setName("horzLine6");

    obj.abaVaziaaba7 = GUI.fromHandle(_obj_newObject("tab"));
    obj.abaVaziaaba7:setParent(obj.pgcPrincipal);
    obj.abaVaziaaba7:setName("abaVaziaaba7");
    obj.abaVaziaaba7:setTitle("Extra1");

    obj.rectangle8 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle8:setParent(obj.abaVaziaaba7);
    obj.rectangle8:setAlign("client");
    obj.rectangle8:setColor("#40000000");
    obj.rectangle8:setXradius(10);
    obj.rectangle8:setYradius(10);
    obj.rectangle8:setName("rectangle8");

    obj.scrollBox8 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox8:setParent(obj.rectangle8);
    obj.scrollBox8:setAlign("client");
    obj.scrollBox8:setName("scrollBox8");

    obj.richEdit7 = GUI.fromHandle(_obj_newObject("richEdit"));
    obj.richEdit7:setParent(obj.scrollBox8);
    obj.richEdit7:setAlign("client");
    lfm_setPropAsString(obj.richEdit7, "backgroundColor",  "#40000000");
    obj.richEdit7:setField("Extra1");
    obj.richEdit7:setName("richEdit7");

    obj.popupaba7 = GUI.fromHandle(_obj_newObject("popup"));
    obj.popupaba7:setParent(obj.pgcPrincipal);
    obj.popupaba7:setName("popupaba7");
    obj.popupaba7:setWidth(150);
    obj.popupaba7:setHeight(50);
    obj.popupaba7:setBackOpacity(0);

    obj.flowLayout79 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout79:setParent(obj.popupaba7);
    obj.flowLayout79:setWidth(150);
    obj.flowLayout79:setHeight(50);
    obj.flowLayout79:setPadding({top=5,bottom=5,left=5,right=5});
    obj.flowLayout79:setMaxControlsPerLine(2);
    obj.flowLayout79:setName("flowLayout79");

    obj.editaba7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.editaba7:setParent(obj.flowLayout79);
    obj.editaba7:setAlign("top");
    obj.editaba7:setName("editaba7");
    obj.editaba7:setField("editaba7");
    obj.editaba7:setFontSize(10);
    obj.editaba7:setTransparent(true);
    obj.editaba7:setVertTextAlign("center");
    obj.editaba7:setWidth(100);

    obj.okButtonaba7 = GUI.fromHandle(_obj_newObject("button"));
    obj.okButtonaba7:setParent(obj.flowLayout79);
    obj.okButtonaba7:setName("okButtonaba7");
    obj.okButtonaba7:setText("ok");
    obj.okButtonaba7:setWidth(25);
    obj.okButtonaba7:setFontSize(10);

    obj.horzLine7 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine7:setParent(obj.flowLayout79);
    obj.horzLine7:setAlign("top");
    obj.horzLine7:setStrokeColor("#FFFFFF50");
    obj.horzLine7:setStrokeSize(1);
    obj.horzLine7:setWidth(100);
    obj.horzLine7:setName("horzLine7");

    obj.abaVaziaaba8 = GUI.fromHandle(_obj_newObject("tab"));
    obj.abaVaziaaba8:setParent(obj.pgcPrincipal);
    obj.abaVaziaaba8:setName("abaVaziaaba8");
    obj.abaVaziaaba8:setTitle("Extra2");

    obj.rectangle9 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle9:setParent(obj.abaVaziaaba8);
    obj.rectangle9:setAlign("client");
    obj.rectangle9:setColor("#40000000");
    obj.rectangle9:setXradius(10);
    obj.rectangle9:setYradius(10);
    obj.rectangle9:setName("rectangle9");

    obj.scrollBox9 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox9:setParent(obj.rectangle9);
    obj.scrollBox9:setAlign("client");
    obj.scrollBox9:setName("scrollBox9");

    obj.richEdit8 = GUI.fromHandle(_obj_newObject("richEdit"));
    obj.richEdit8:setParent(obj.scrollBox9);
    obj.richEdit8:setAlign("client");
    lfm_setPropAsString(obj.richEdit8, "backgroundColor",  "#40000000");
    obj.richEdit8:setField("Extra2");
    obj.richEdit8:setName("richEdit8");

    obj.popupaba8 = GUI.fromHandle(_obj_newObject("popup"));
    obj.popupaba8:setParent(obj.pgcPrincipal);
    obj.popupaba8:setName("popupaba8");
    obj.popupaba8:setWidth(150);
    obj.popupaba8:setHeight(50);
    obj.popupaba8:setBackOpacity(0);

    obj.flowLayout80 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout80:setParent(obj.popupaba8);
    obj.flowLayout80:setWidth(150);
    obj.flowLayout80:setHeight(50);
    obj.flowLayout80:setPadding({top=5,bottom=5,left=5,right=5});
    obj.flowLayout80:setMaxControlsPerLine(2);
    obj.flowLayout80:setName("flowLayout80");

    obj.editaba8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.editaba8:setParent(obj.flowLayout80);
    obj.editaba8:setAlign("top");
    obj.editaba8:setName("editaba8");
    obj.editaba8:setField("editaba8");
    obj.editaba8:setFontSize(10);
    obj.editaba8:setTransparent(true);
    obj.editaba8:setVertTextAlign("center");
    obj.editaba8:setWidth(100);

    obj.okButtonaba8 = GUI.fromHandle(_obj_newObject("button"));
    obj.okButtonaba8:setParent(obj.flowLayout80);
    obj.okButtonaba8:setName("okButtonaba8");
    obj.okButtonaba8:setText("ok");
    obj.okButtonaba8:setWidth(25);
    obj.okButtonaba8:setFontSize(10);

    obj.horzLine8 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine8:setParent(obj.flowLayout80);
    obj.horzLine8:setAlign("top");
    obj.horzLine8:setStrokeColor("#FFFFFF50");
    obj.horzLine8:setStrokeSize(1);
    obj.horzLine8:setWidth(100);
    obj.horzLine8:setName("horzLine8");

    obj.abaVaziaaba9 = GUI.fromHandle(_obj_newObject("tab"));
    obj.abaVaziaaba9:setParent(obj.pgcPrincipal);
    obj.abaVaziaaba9:setName("abaVaziaaba9");
    obj.abaVaziaaba9:setTitle("Extra3");

    obj.rectangle10 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle10:setParent(obj.abaVaziaaba9);
    obj.rectangle10:setAlign("client");
    obj.rectangle10:setColor("#40000000");
    obj.rectangle10:setXradius(10);
    obj.rectangle10:setYradius(10);
    obj.rectangle10:setName("rectangle10");

    obj.scrollBox10 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox10:setParent(obj.rectangle10);
    obj.scrollBox10:setAlign("client");
    obj.scrollBox10:setName("scrollBox10");

    obj.richEdit9 = GUI.fromHandle(_obj_newObject("richEdit"));
    obj.richEdit9:setParent(obj.scrollBox10);
    obj.richEdit9:setAlign("client");
    lfm_setPropAsString(obj.richEdit9, "backgroundColor",  "#40000000");
    obj.richEdit9:setField("Extra3");
    obj.richEdit9:setName("richEdit9");

    obj.popupaba9 = GUI.fromHandle(_obj_newObject("popup"));
    obj.popupaba9:setParent(obj.pgcPrincipal);
    obj.popupaba9:setName("popupaba9");
    obj.popupaba9:setWidth(150);
    obj.popupaba9:setHeight(50);
    obj.popupaba9:setBackOpacity(0);

    obj.flowLayout81 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout81:setParent(obj.popupaba9);
    obj.flowLayout81:setWidth(150);
    obj.flowLayout81:setHeight(50);
    obj.flowLayout81:setPadding({top=5,bottom=5,left=5,right=5});
    obj.flowLayout81:setMaxControlsPerLine(2);
    obj.flowLayout81:setName("flowLayout81");

    obj.editaba9 = GUI.fromHandle(_obj_newObject("edit"));
    obj.editaba9:setParent(obj.flowLayout81);
    obj.editaba9:setAlign("top");
    obj.editaba9:setName("editaba9");
    obj.editaba9:setField("editaba9");
    obj.editaba9:setFontSize(10);
    obj.editaba9:setTransparent(true);
    obj.editaba9:setVertTextAlign("center");
    obj.editaba9:setWidth(100);

    obj.okButtonaba9 = GUI.fromHandle(_obj_newObject("button"));
    obj.okButtonaba9:setParent(obj.flowLayout81);
    obj.okButtonaba9:setName("okButtonaba9");
    obj.okButtonaba9:setText("ok");
    obj.okButtonaba9:setWidth(25);
    obj.okButtonaba9:setFontSize(10);

    obj.horzLine9 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine9:setParent(obj.flowLayout81);
    obj.horzLine9:setAlign("top");
    obj.horzLine9:setStrokeColor("#FFFFFF50");
    obj.horzLine9:setStrokeSize(1);
    obj.horzLine9:setWidth(100);
    obj.horzLine9:setName("horzLine9");

    obj.abaVaziaaba10 = GUI.fromHandle(_obj_newObject("tab"));
    obj.abaVaziaaba10:setParent(obj.pgcPrincipal);
    obj.abaVaziaaba10:setName("abaVaziaaba10");
    obj.abaVaziaaba10:setTitle("Extra4");

    obj.rectangle11 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle11:setParent(obj.abaVaziaaba10);
    obj.rectangle11:setAlign("client");
    obj.rectangle11:setColor("#40000000");
    obj.rectangle11:setXradius(10);
    obj.rectangle11:setYradius(10);
    obj.rectangle11:setName("rectangle11");

    obj.scrollBox11 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox11:setParent(obj.rectangle11);
    obj.scrollBox11:setAlign("client");
    obj.scrollBox11:setName("scrollBox11");

    obj.richEdit10 = GUI.fromHandle(_obj_newObject("richEdit"));
    obj.richEdit10:setParent(obj.scrollBox11);
    obj.richEdit10:setAlign("client");
    lfm_setPropAsString(obj.richEdit10, "backgroundColor",  "#40000000");
    obj.richEdit10:setField("Extra4");
    obj.richEdit10:setName("richEdit10");

    obj.popupaba10 = GUI.fromHandle(_obj_newObject("popup"));
    obj.popupaba10:setParent(obj.pgcPrincipal);
    obj.popupaba10:setName("popupaba10");
    obj.popupaba10:setWidth(150);
    obj.popupaba10:setHeight(50);
    obj.popupaba10:setBackOpacity(0);

    obj.flowLayout82 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout82:setParent(obj.popupaba10);
    obj.flowLayout82:setWidth(150);
    obj.flowLayout82:setHeight(50);
    obj.flowLayout82:setPadding({top=5,bottom=5,left=5,right=5});
    obj.flowLayout82:setMaxControlsPerLine(2);
    obj.flowLayout82:setName("flowLayout82");

    obj.editaba10 = GUI.fromHandle(_obj_newObject("edit"));
    obj.editaba10:setParent(obj.flowLayout82);
    obj.editaba10:setAlign("top");
    obj.editaba10:setName("editaba10");
    obj.editaba10:setField("editaba10");
    obj.editaba10:setFontSize(10);
    obj.editaba10:setTransparent(true);
    obj.editaba10:setVertTextAlign("center");
    obj.editaba10:setWidth(100);

    obj.okButtonaba10 = GUI.fromHandle(_obj_newObject("button"));
    obj.okButtonaba10:setParent(obj.flowLayout82);
    obj.okButtonaba10:setName("okButtonaba10");
    obj.okButtonaba10:setText("ok");
    obj.okButtonaba10:setWidth(25);
    obj.okButtonaba10:setFontSize(10);

    obj.horzLine10 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine10:setParent(obj.flowLayout82);
    obj.horzLine10:setAlign("top");
    obj.horzLine10:setStrokeColor("#FFFFFF50");
    obj.horzLine10:setStrokeSize(1);
    obj.horzLine10:setWidth(100);
    obj.horzLine10:setName("horzLine10");

    obj._e_event0 = obj.abaVaziaaba1:addEventListener("onDblClick",
        function (_)
            self.popupaba1:show('bottomCenter',self.abaaba1)
                                    self.editaba1:setFocus();
        end, obj);

    obj._e_event1 = obj.editaba1:addEventListener("onKeyDown",
        function (_, event)
            
                                    if event.keyCode == 13 then
                                        self.okButtonaba1:setFocus();
                                        self.abaVaziaaba1.title = sheet.editaba1;
                                        self.popupaba1:close();
                                        sheet.editaba1 = '';
                                    end
        end, obj);

    obj._e_event2 = obj.okButtonaba1:addEventListener("onClick",
        function (_)
            self.abaVaziaaba1.title = sheet.editaba1;
                                               self.popupaba1:close();
                                               sheet.editaba1 = '';
        end, obj);

    obj._e_event3 = obj.abaVaziaaba2:addEventListener("onDblClick",
        function (_)
            self.popupaba2:show('bottomCenter',self.abaaba2)
                                    self.editaba2:setFocus();
        end, obj);

    obj._e_event4 = obj.editaba2:addEventListener("onKeyDown",
        function (_, event)
            
                                    if event.keyCode == 13 then
                                        self.okButtonaba2:setFocus();
                                        self.abaVaziaaba2.title = sheet.editaba2;
                                        self.popupaba2:close();
                                        sheet.editaba2 = '';
                                    end
        end, obj);

    obj._e_event5 = obj.okButtonaba2:addEventListener("onClick",
        function (_)
            self.abaVaziaaba2.title = sheet.editaba2;
                                               self.popupaba2:close();
                                               sheet.editaba2 = '';
        end, obj);

    obj._e_event6 = obj.abaVaziaaba3:addEventListener("onDblClick",
        function (_)
            self.popupaba3:show('bottomCenter',self.abaaba3)
                                    self.editaba3:setFocus();
        end, obj);

    obj._e_event7 = obj.editaba3:addEventListener("onKeyDown",
        function (_, event)
            
                                    if event.keyCode == 13 then
                                        self.okButtonaba3:setFocus();
                                        self.abaVaziaaba3.title = sheet.editaba3;
                                        self.popupaba3:close();
                                        sheet.editaba3 = '';
                                    end
        end, obj);

    obj._e_event8 = obj.okButtonaba3:addEventListener("onClick",
        function (_)
            self.abaVaziaaba3.title = sheet.editaba3;
                                               self.popupaba3:close();
                                               sheet.editaba3 = '';
        end, obj);

    obj._e_event9 = obj.abaVaziaaba4:addEventListener("onDblClick",
        function (_)
            self.popupaba4:show('bottomCenter',self.abaaba4)
                                    self.editaba4:setFocus();
        end, obj);

    obj._e_event10 = obj.editaba4:addEventListener("onKeyDown",
        function (_, event)
            
                                    if event.keyCode == 13 then
                                        self.okButtonaba4:setFocus();
                                        self.abaVaziaaba4.title = sheet.editaba4;
                                        self.popupaba4:close();
                                        sheet.editaba4 = '';
                                    end
        end, obj);

    obj._e_event11 = obj.okButtonaba4:addEventListener("onClick",
        function (_)
            self.abaVaziaaba4.title = sheet.editaba4;
                                               self.popupaba4:close();
                                               sheet.editaba4 = '';
        end, obj);

    obj._e_event12 = obj.abaVaziaaba5:addEventListener("onDblClick",
        function (_)
            self.popupaba5:show('bottomCenter',self.abaaba5)
                                    self.editaba5:setFocus();
        end, obj);

    obj._e_event13 = obj.editaba5:addEventListener("onKeyDown",
        function (_, event)
            
                                    if event.keyCode == 13 then
                                        self.okButtonaba5:setFocus();
                                        self.abaVaziaaba5.title = sheet.editaba5;
                                        self.popupaba5:close();
                                        sheet.editaba5 = '';
                                    end
        end, obj);

    obj._e_event14 = obj.okButtonaba5:addEventListener("onClick",
        function (_)
            self.abaVaziaaba5.title = sheet.editaba5;
                                               self.popupaba5:close();
                                               sheet.editaba5 = '';
        end, obj);

    obj._e_event15 = obj.abaVaziaaba6:addEventListener("onDblClick",
        function (_)
            self.popupaba6:show('bottomCenter',self.abaaba6)
                                    self.editaba6:setFocus();
        end, obj);

    obj._e_event16 = obj.editaba6:addEventListener("onKeyDown",
        function (_, event)
            
                                    if event.keyCode == 13 then
                                        self.okButtonaba6:setFocus();
                                        self.abaVaziaaba6.title = sheet.editaba6;
                                        self.popupaba6:close();
                                        sheet.editaba6 = '';
                                    end
        end, obj);

    obj._e_event17 = obj.okButtonaba6:addEventListener("onClick",
        function (_)
            self.abaVaziaaba6.title = sheet.editaba6;
                                               self.popupaba6:close();
                                               sheet.editaba6 = '';
        end, obj);

    obj._e_event18 = obj.abaVaziaaba7:addEventListener("onDblClick",
        function (_)
            self.popupaba7:show('bottomCenter',self.abaaba7)
                                    self.editaba7:setFocus();
        end, obj);

    obj._e_event19 = obj.editaba7:addEventListener("onKeyDown",
        function (_, event)
            
                                    if event.keyCode == 13 then
                                        self.okButtonaba7:setFocus();
                                        self.abaVaziaaba7.title = sheet.editaba7;
                                        self.popupaba7:close();
                                        sheet.editaba7 = '';
                                    end
        end, obj);

    obj._e_event20 = obj.okButtonaba7:addEventListener("onClick",
        function (_)
            self.abaVaziaaba7.title = sheet.editaba7;
                                               self.popupaba7:close();
                                               sheet.editaba7 = '';
        end, obj);

    obj._e_event21 = obj.abaVaziaaba8:addEventListener("onDblClick",
        function (_)
            self.popupaba8:show('bottomCenter',self.abaaba8)
                                    self.editaba8:setFocus();
        end, obj);

    obj._e_event22 = obj.editaba8:addEventListener("onKeyDown",
        function (_, event)
            
                                    if event.keyCode == 13 then
                                        self.okButtonaba8:setFocus();
                                        self.abaVaziaaba8.title = sheet.editaba8;
                                        self.popupaba8:close();
                                        sheet.editaba8 = '';
                                    end
        end, obj);

    obj._e_event23 = obj.okButtonaba8:addEventListener("onClick",
        function (_)
            self.abaVaziaaba8.title = sheet.editaba8;
                                               self.popupaba8:close();
                                               sheet.editaba8 = '';
        end, obj);

    obj._e_event24 = obj.abaVaziaaba9:addEventListener("onDblClick",
        function (_)
            self.popupaba9:show('bottomCenter',self.abaaba9)
                                    self.editaba9:setFocus();
        end, obj);

    obj._e_event25 = obj.editaba9:addEventListener("onKeyDown",
        function (_, event)
            
                                    if event.keyCode == 13 then
                                        self.okButtonaba9:setFocus();
                                        self.abaVaziaaba9.title = sheet.editaba9;
                                        self.popupaba9:close();
                                        sheet.editaba9 = '';
                                    end
        end, obj);

    obj._e_event26 = obj.okButtonaba9:addEventListener("onClick",
        function (_)
            self.abaVaziaaba9.title = sheet.editaba9;
                                               self.popupaba9:close();
                                               sheet.editaba9 = '';
        end, obj);

    obj._e_event27 = obj.abaVaziaaba10:addEventListener("onDblClick",
        function (_)
            self.popupaba10:show('bottomCenter',self.abaaba10)
                                    self.editaba10:setFocus();
        end, obj);

    obj._e_event28 = obj.editaba10:addEventListener("onKeyDown",
        function (_, event)
            
                                    if event.keyCode == 13 then
                                        self.okButtonaba10:setFocus();
                                        self.abaVaziaaba10.title = sheet.editaba10;
                                        self.popupaba10:close();
                                        sheet.editaba10 = '';
                                    end
        end, obj);

    obj._e_event29 = obj.okButtonaba10:addEventListener("onClick",
        function (_)
            self.abaVaziaaba10.title = sheet.editaba10;
                                               self.popupaba10:close();
                                               sheet.editaba10 = '';
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event29);
        __o_rrpgObjs.removeEventListenerById(self._e_event28);
        __o_rrpgObjs.removeEventListenerById(self._e_event27);
        __o_rrpgObjs.removeEventListenerById(self._e_event26);
        __o_rrpgObjs.removeEventListenerById(self._e_event25);
        __o_rrpgObjs.removeEventListenerById(self._e_event24);
        __o_rrpgObjs.removeEventListenerById(self._e_event23);
        __o_rrpgObjs.removeEventListenerById(self._e_event22);
        __o_rrpgObjs.removeEventListenerById(self._e_event21);
        __o_rrpgObjs.removeEventListenerById(self._e_event20);
        __o_rrpgObjs.removeEventListenerById(self._e_event19);
        __o_rrpgObjs.removeEventListenerById(self._e_event18);
        __o_rrpgObjs.removeEventListenerById(self._e_event17);
        __o_rrpgObjs.removeEventListenerById(self._e_event16);
        __o_rrpgObjs.removeEventListenerById(self._e_event15);
        __o_rrpgObjs.removeEventListenerById(self._e_event14);
        __o_rrpgObjs.removeEventListenerById(self._e_event13);
        __o_rrpgObjs.removeEventListenerById(self._e_event12);
        __o_rrpgObjs.removeEventListenerById(self._e_event11);
        __o_rrpgObjs.removeEventListenerById(self._e_event10);
        __o_rrpgObjs.removeEventListenerById(self._e_event9);
        __o_rrpgObjs.removeEventListenerById(self._e_event8);
        __o_rrpgObjs.removeEventListenerById(self._e_event7);
        __o_rrpgObjs.removeEventListenerById(self._e_event6);
        __o_rrpgObjs.removeEventListenerById(self._e_event5);
        __o_rrpgObjs.removeEventListenerById(self._e_event4);
        __o_rrpgObjs.removeEventListenerById(self._e_event3);
        __o_rrpgObjs.removeEventListenerById(self._e_event2);
        __o_rrpgObjs.removeEventListenerById(self._e_event1);
        __o_rrpgObjs.removeEventListenerById(self._e_event0);
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.flowLayout37 ~= nil then self.flowLayout37:destroy(); self.flowLayout37 = nil; end;
        if self.flowLayout22 ~= nil then self.flowLayout22:destroy(); self.flowLayout22 = nil; end;
        if self.flowLayout24 ~= nil then self.flowLayout24:destroy(); self.flowLayout24 = nil; end;
        if self.edit64 ~= nil then self.edit64:destroy(); self.edit64 = nil; end;
        if self.edit41 ~= nil then self.edit41:destroy(); self.edit41 = nil; end;
        if self.horzLine7 ~= nil then self.horzLine7:destroy(); self.horzLine7 = nil; end;
        if self.flowLayout65 ~= nil then self.flowLayout65:destroy(); self.flowLayout65 = nil; end;
        if self.edit36 ~= nil then self.edit36:destroy(); self.edit36 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.edit33 ~= nil then self.edit33:destroy(); self.edit33 = nil; end;
        if self.flowLayout47 ~= nil then self.flowLayout47:destroy(); self.flowLayout47 = nil; end;
        if self.edit29 ~= nil then self.edit29:destroy(); self.edit29 = nil; end;
        if self.flowLayout19 ~= nil then self.flowLayout19:destroy(); self.flowLayout19 = nil; end;
        if self.flowLayout13 ~= nil then self.flowLayout13:destroy(); self.flowLayout13 = nil; end;
        if self.edit28 ~= nil then self.edit28:destroy(); self.edit28 = nil; end;
        if self.flowLayout1 ~= nil then self.flowLayout1:destroy(); self.flowLayout1 = nil; end;
        if self.richEdit10 ~= nil then self.richEdit10:destroy(); self.richEdit10 = nil; end;
        if self.flowLayout67 ~= nil then self.flowLayout67:destroy(); self.flowLayout67 = nil; end;
        if self.horzLine10 ~= nil then self.horzLine10:destroy(); self.horzLine10 = nil; end;
        if self.flowLayout43 ~= nil then self.flowLayout43:destroy(); self.flowLayout43 = nil; end;
        if self.flowLayout5 ~= nil then self.flowLayout5:destroy(); self.flowLayout5 = nil; end;
        if self.editaba2 ~= nil then self.editaba2:destroy(); self.editaba2 = nil; end;
        if self.abaVaziaaba1 ~= nil then self.abaVaziaaba1:destroy(); self.abaVaziaaba1 = nil; end;
        if self.edit47 ~= nil then self.edit47:destroy(); self.edit47 = nil; end;
        if self.flowLayout74 ~= nil then self.flowLayout74:destroy(); self.flowLayout74 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.flowLayout73 ~= nil then self.flowLayout73:destroy(); self.flowLayout73 = nil; end;
        if self.flowLayout78 ~= nil then self.flowLayout78:destroy(); self.flowLayout78 = nil; end;
        if self.edit26 ~= nil then self.edit26:destroy(); self.edit26 = nil; end;
        if self.flowLayout16 ~= nil then self.flowLayout16:destroy(); self.flowLayout16 = nil; end;
        if self.edit34 ~= nil then self.edit34:destroy(); self.edit34 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.flowLayout64 ~= nil then self.flowLayout64:destroy(); self.flowLayout64 = nil; end;
        if self.popupaba10 ~= nil then self.popupaba10:destroy(); self.popupaba10 = nil; end;
        if self.flowLayout44 ~= nil then self.flowLayout44:destroy(); self.flowLayout44 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.flowLayout30 ~= nil then self.flowLayout30:destroy(); self.flowLayout30 = nil; end;
        if self.scrollBox9 ~= nil then self.scrollBox9:destroy(); self.scrollBox9 = nil; end;
        if self.flowLayout52 ~= nil then self.flowLayout52:destroy(); self.flowLayout52 = nil; end;
        if self.scrollBox2 ~= nil then self.scrollBox2:destroy(); self.scrollBox2 = nil; end;
        if self.flowLayout58 ~= nil then self.flowLayout58:destroy(); self.flowLayout58 = nil; end;
        if self.edit68 ~= nil then self.edit68:destroy(); self.edit68 = nil; end;
        if self.flowLayout39 ~= nil then self.flowLayout39:destroy(); self.flowLayout39 = nil; end;
        if self.editaba3 ~= nil then self.editaba3:destroy(); self.editaba3 = nil; end;
        if self.edit69 ~= nil then self.edit69:destroy(); self.edit69 = nil; end;
        if self.flowLayout23 ~= nil then self.flowLayout23:destroy(); self.flowLayout23 = nil; end;
        if self.abaVaziaaba10 ~= nil then self.abaVaziaaba10:destroy(); self.abaVaziaaba10 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.edit31 ~= nil then self.edit31:destroy(); self.edit31 = nil; end;
        if self.flowLayout29 ~= nil then self.flowLayout29:destroy(); self.flowLayout29 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.edit52 ~= nil then self.edit52:destroy(); self.edit52 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.okButtonaba8 ~= nil then self.okButtonaba8:destroy(); self.okButtonaba8 = nil; end;
        if self.okButtonaba5 ~= nil then self.okButtonaba5:destroy(); self.okButtonaba5 = nil; end;
        if self.edit58 ~= nil then self.edit58:destroy(); self.edit58 = nil; end;
        if self.flowLayout33 ~= nil then self.flowLayout33:destroy(); self.flowLayout33 = nil; end;
        if self.flowLayout46 ~= nil then self.flowLayout46:destroy(); self.flowLayout46 = nil; end;
        if self.edit66 ~= nil then self.edit66:destroy(); self.edit66 = nil; end;
        if self.flowLayout35 ~= nil then self.flowLayout35:destroy(); self.flowLayout35 = nil; end;
        if self.editaba9 ~= nil then self.editaba9:destroy(); self.editaba9 = nil; end;
        if self.editaba5 ~= nil then self.editaba5:destroy(); self.editaba5 = nil; end;
        if self.edit23 ~= nil then self.edit23:destroy(); self.edit23 = nil; end;
        if self.flowLayout63 ~= nil then self.flowLayout63:destroy(); self.flowLayout63 = nil; end;
        if self.flowLayout68 ~= nil then self.flowLayout68:destroy(); self.flowLayout68 = nil; end;
        if self.flowLayout49 ~= nil then self.flowLayout49:destroy(); self.flowLayout49 = nil; end;
        if self.flowLayout69 ~= nil then self.flowLayout69:destroy(); self.flowLayout69 = nil; end;
        if self.flowLayout14 ~= nil then self.flowLayout14:destroy(); self.flowLayout14 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.flowLayout31 ~= nil then self.flowLayout31:destroy(); self.flowLayout31 = nil; end;
        if self.edit40 ~= nil then self.edit40:destroy(); self.edit40 = nil; end;
        if self.flowLayout40 ~= nil then self.flowLayout40:destroy(); self.flowLayout40 = nil; end;
        if self.horzLine1 ~= nil then self.horzLine1:destroy(); self.horzLine1 = nil; end;
        if self.abaVaziaaba4 ~= nil then self.abaVaziaaba4:destroy(); self.abaVaziaaba4 = nil; end;
        if self.edit38 ~= nil then self.edit38:destroy(); self.edit38 = nil; end;
        if self.okButtonaba1 ~= nil then self.okButtonaba1:destroy(); self.okButtonaba1 = nil; end;
        if self.edit67 ~= nil then self.edit67:destroy(); self.edit67 = nil; end;
        if self.abaVaziaaba6 ~= nil then self.abaVaziaaba6:destroy(); self.abaVaziaaba6 = nil; end;
        if self.abaAtributos ~= nil then self.abaAtributos:destroy(); self.abaAtributos = nil; end;
        if self.editaba10 ~= nil then self.editaba10:destroy(); self.editaba10 = nil; end;
        if self.richEdit1 ~= nil then self.richEdit1:destroy(); self.richEdit1 = nil; end;
        if self.abaVaziaaba7 ~= nil then self.abaVaziaaba7:destroy(); self.abaVaziaaba7 = nil; end;
        if self.scrollBox3 ~= nil then self.scrollBox3:destroy(); self.scrollBox3 = nil; end;
        if self.horzLine3 ~= nil then self.horzLine3:destroy(); self.horzLine3 = nil; end;
        if self.flowLayout6 ~= nil then self.flowLayout6:destroy(); self.flowLayout6 = nil; end;
        if self.flowLayout76 ~= nil then self.flowLayout76:destroy(); self.flowLayout76 = nil; end;
        if self.pgcPrincipal ~= nil then self.pgcPrincipal:destroy(); self.pgcPrincipal = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.richEdit3 ~= nil then self.richEdit3:destroy(); self.richEdit3 = nil; end;
        if self.flowLayout60 ~= nil then self.flowLayout60:destroy(); self.flowLayout60 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.popupaba7 ~= nil then self.popupaba7:destroy(); self.popupaba7 = nil; end;
        if self.edit49 ~= nil then self.edit49:destroy(); self.edit49 = nil; end;
        if self.popupaba9 ~= nil then self.popupaba9:destroy(); self.popupaba9 = nil; end;
        if self.flowLayout71 ~= nil then self.flowLayout71:destroy(); self.flowLayout71 = nil; end;
        if self.edit27 ~= nil then self.edit27:destroy(); self.edit27 = nil; end;
        if self.scrollBox5 ~= nil then self.scrollBox5:destroy(); self.scrollBox5 = nil; end;
        if self.richEdit2 ~= nil then self.richEdit2:destroy(); self.richEdit2 = nil; end;
        if self.edit62 ~= nil then self.edit62:destroy(); self.edit62 = nil; end;
        if self.richEdit8 ~= nil then self.richEdit8:destroy(); self.richEdit8 = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.edit25 ~= nil then self.edit25:destroy(); self.edit25 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.flowLayout8 ~= nil then self.flowLayout8:destroy(); self.flowLayout8 = nil; end;
        if self.edit60 ~= nil then self.edit60:destroy(); self.edit60 = nil; end;
        if self.flowLayout70 ~= nil then self.flowLayout70:destroy(); self.flowLayout70 = nil; end;
        if self.flowLayout48 ~= nil then self.flowLayout48:destroy(); self.flowLayout48 = nil; end;
        if self.rectangle11 ~= nil then self.rectangle11:destroy(); self.rectangle11 = nil; end;
        if self.edit46 ~= nil then self.edit46:destroy(); self.edit46 = nil; end;
        if self.abaVaziaaba5 ~= nil then self.abaVaziaaba5:destroy(); self.abaVaziaaba5 = nil; end;
        if self.flowLayout32 ~= nil then self.flowLayout32:destroy(); self.flowLayout32 = nil; end;
        if self.rectangle9 ~= nil then self.rectangle9:destroy(); self.rectangle9 = nil; end;
        if self.scrollBox8 ~= nil then self.scrollBox8:destroy(); self.scrollBox8 = nil; end;
        if self.flowLayout3 ~= nil then self.flowLayout3:destroy(); self.flowLayout3 = nil; end;
        if self.scrollBox7 ~= nil then self.scrollBox7:destroy(); self.scrollBox7 = nil; end;
        if self.flowLayout57 ~= nil then self.flowLayout57:destroy(); self.flowLayout57 = nil; end;
        if self.flowLayout77 ~= nil then self.flowLayout77:destroy(); self.flowLayout77 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.scrollBox11 ~= nil then self.scrollBox11:destroy(); self.scrollBox11 = nil; end;
        if self.okButtonaba4 ~= nil then self.okButtonaba4:destroy(); self.okButtonaba4 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.flowLayout18 ~= nil then self.flowLayout18:destroy(); self.flowLayout18 = nil; end;
        if self.edit35 ~= nil then self.edit35:destroy(); self.edit35 = nil; end;
        if self.abaVaziaaba2 ~= nil then self.abaVaziaaba2:destroy(); self.abaVaziaaba2 = nil; end;
        if self.flowLayout51 ~= nil then self.flowLayout51:destroy(); self.flowLayout51 = nil; end;
        if self.flowLayout15 ~= nil then self.flowLayout15:destroy(); self.flowLayout15 = nil; end;
        if self.flowLayout12 ~= nil then self.flowLayout12:destroy(); self.flowLayout12 = nil; end;
        if self.edit57 ~= nil then self.edit57:destroy(); self.edit57 = nil; end;
        if self.flowLayout41 ~= nil then self.flowLayout41:destroy(); self.flowLayout41 = nil; end;
        if self.flowLayout62 ~= nil then self.flowLayout62:destroy(); self.flowLayout62 = nil; end;
        if self.edit54 ~= nil then self.edit54:destroy(); self.edit54 = nil; end;
        if self.edit63 ~= nil then self.edit63:destroy(); self.edit63 = nil; end;
        if self.horzLine2 ~= nil then self.horzLine2:destroy(); self.horzLine2 = nil; end;
        if self.popupaba8 ~= nil then self.popupaba8:destroy(); self.popupaba8 = nil; end;
        if self.rectangle10 ~= nil then self.rectangle10:destroy(); self.rectangle10 = nil; end;
        if self.flowLayout61 ~= nil then self.flowLayout61:destroy(); self.flowLayout61 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.edit50 ~= nil then self.edit50:destroy(); self.edit50 = nil; end;
        if self.edit61 ~= nil then self.edit61:destroy(); self.edit61 = nil; end;
        if self.flowLayout55 ~= nil then self.flowLayout55:destroy(); self.flowLayout55 = nil; end;
        if self.richEdit4 ~= nil then self.richEdit4:destroy(); self.richEdit4 = nil; end;
        if self.edit24 ~= nil then self.edit24:destroy(); self.edit24 = nil; end;
        if self.edit59 ~= nil then self.edit59:destroy(); self.edit59 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.flowLayout79 ~= nil then self.flowLayout79:destroy(); self.flowLayout79 = nil; end;
        if self.popupaba5 ~= nil then self.popupaba5:destroy(); self.popupaba5 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.edit44 ~= nil then self.edit44:destroy(); self.edit44 = nil; end;
        if self.horzLine8 ~= nil then self.horzLine8:destroy(); self.horzLine8 = nil; end;
        if self.popupaba1 ~= nil then self.popupaba1:destroy(); self.popupaba1 = nil; end;
        if self.flowLayout20 ~= nil then self.flowLayout20:destroy(); self.flowLayout20 = nil; end;
        if self.editaba4 ~= nil then self.editaba4:destroy(); self.editaba4 = nil; end;
        if self.abaVaziaaba8 ~= nil then self.abaVaziaaba8:destroy(); self.abaVaziaaba8 = nil; end;
        if self.editaba6 ~= nil then self.editaba6:destroy(); self.editaba6 = nil; end;
        if self.okButtonaba3 ~= nil then self.okButtonaba3:destroy(); self.okButtonaba3 = nil; end;
        if self.horzLine5 ~= nil then self.horzLine5:destroy(); self.horzLine5 = nil; end;
        if self.flowLayout25 ~= nil then self.flowLayout25:destroy(); self.flowLayout25 = nil; end;
        if self.flowLayout26 ~= nil then self.flowLayout26:destroy(); self.flowLayout26 = nil; end;
        if self.flowLayout80 ~= nil then self.flowLayout80:destroy(); self.flowLayout80 = nil; end;
        if self.okButtonaba9 ~= nil then self.okButtonaba9:destroy(); self.okButtonaba9 = nil; end;
        if self.flowLayout54 ~= nil then self.flowLayout54:destroy(); self.flowLayout54 = nil; end;
        if self.edit45 ~= nil then self.edit45:destroy(); self.edit45 = nil; end;
        if self.flowLayout7 ~= nil then self.flowLayout7:destroy(); self.flowLayout7 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.edit53 ~= nil then self.edit53:destroy(); self.edit53 = nil; end;
        if self.okButtonaba6 ~= nil then self.okButtonaba6:destroy(); self.okButtonaba6 = nil; end;
        if self.okButtonaba2 ~= nil then self.okButtonaba2:destroy(); self.okButtonaba2 = nil; end;
        if self.flowLayout9 ~= nil then self.flowLayout9:destroy(); self.flowLayout9 = nil; end;
        if self.flowLayout50 ~= nil then self.flowLayout50:destroy(); self.flowLayout50 = nil; end;
        if self.flowLayout10 ~= nil then self.flowLayout10:destroy(); self.flowLayout10 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.flowLayout17 ~= nil then self.flowLayout17:destroy(); self.flowLayout17 = nil; end;
        if self.flowLayout53 ~= nil then self.flowLayout53:destroy(); self.flowLayout53 = nil; end;
        if self.edit30 ~= nil then self.edit30:destroy(); self.edit30 = nil; end;
        if self.edit21 ~= nil then self.edit21:destroy(); self.edit21 = nil; end;
        if self.edit56 ~= nil then self.edit56:destroy(); self.edit56 = nil; end;
        if self.abaVaziaaba3 ~= nil then self.abaVaziaaba3:destroy(); self.abaVaziaaba3 = nil; end;
        if self.horzLine9 ~= nil then self.horzLine9:destroy(); self.horzLine9 = nil; end;
        if self.flowLayout42 ~= nil then self.flowLayout42:destroy(); self.flowLayout42 = nil; end;
        if self.flowLayout21 ~= nil then self.flowLayout21:destroy(); self.flowLayout21 = nil; end;
        if self.editaba8 ~= nil then self.editaba8:destroy(); self.editaba8 = nil; end;
        if self.okButtonaba7 ~= nil then self.okButtonaba7:destroy(); self.okButtonaba7 = nil; end;
        if self.edit55 ~= nil then self.edit55:destroy(); self.edit55 = nil; end;
        if self.flowLayout27 ~= nil then self.flowLayout27:destroy(); self.flowLayout27 = nil; end;
        if self.edit43 ~= nil then self.edit43:destroy(); self.edit43 = nil; end;
        if self.flowLayout11 ~= nil then self.flowLayout11:destroy(); self.flowLayout11 = nil; end;
        if self.okButtonaba10 ~= nil then self.okButtonaba10:destroy(); self.okButtonaba10 = nil; end;
        if self.edit65 ~= nil then self.edit65:destroy(); self.edit65 = nil; end;
        if self.flowLayout4 ~= nil then self.flowLayout4:destroy(); self.flowLayout4 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.edit39 ~= nil then self.edit39:destroy(); self.edit39 = nil; end;
        if self.popupaba2 ~= nil then self.popupaba2:destroy(); self.popupaba2 = nil; end;
        if self.scrollBox10 ~= nil then self.scrollBox10:destroy(); self.scrollBox10 = nil; end;
        if self.editaba1 ~= nil then self.editaba1:destroy(); self.editaba1 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.edit37 ~= nil then self.edit37:destroy(); self.edit37 = nil; end;
        if self.flowLayout2 ~= nil then self.flowLayout2:destroy(); self.flowLayout2 = nil; end;
        if self.flowLayout66 ~= nil then self.flowLayout66:destroy(); self.flowLayout66 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.flowLayout34 ~= nil then self.flowLayout34:destroy(); self.flowLayout34 = nil; end;
        if self.flowLayout45 ~= nil then self.flowLayout45:destroy(); self.flowLayout45 = nil; end;
        if self.edit51 ~= nil then self.edit51:destroy(); self.edit51 = nil; end;
        if self.edit48 ~= nil then self.edit48:destroy(); self.edit48 = nil; end;
        if self.scrollBox6 ~= nil then self.scrollBox6:destroy(); self.scrollBox6 = nil; end;
        if self.flowLayout56 ~= nil then self.flowLayout56:destroy(); self.flowLayout56 = nil; end;
        if self.richEdit7 ~= nil then self.richEdit7:destroy(); self.richEdit7 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.popupaba4 ~= nil then self.popupaba4:destroy(); self.popupaba4 = nil; end;
        if self.richEdit6 ~= nil then self.richEdit6:destroy(); self.richEdit6 = nil; end;
        if self.flowLayout36 ~= nil then self.flowLayout36:destroy(); self.flowLayout36 = nil; end;
        if self.horzLine4 ~= nil then self.horzLine4:destroy(); self.horzLine4 = nil; end;
        if self.flowLayout38 ~= nil then self.flowLayout38:destroy(); self.flowLayout38 = nil; end;
        if self.popupaba3 ~= nil then self.popupaba3:destroy(); self.popupaba3 = nil; end;
        if self.edit70 ~= nil then self.edit70:destroy(); self.edit70 = nil; end;
        if self.richEdit5 ~= nil then self.richEdit5:destroy(); self.richEdit5 = nil; end;
        if self.flowLayout75 ~= nil then self.flowLayout75:destroy(); self.flowLayout75 = nil; end;
        if self.flowLayout28 ~= nil then self.flowLayout28:destroy(); self.flowLayout28 = nil; end;
        if self.popupaba6 ~= nil then self.popupaba6:destroy(); self.popupaba6 = nil; end;
        if self.edit42 ~= nil then self.edit42:destroy(); self.edit42 = nil; end;
        if self.edit22 ~= nil then self.edit22:destroy(); self.edit22 = nil; end;
        if self.flowLayout81 ~= nil then self.flowLayout81:destroy(); self.flowLayout81 = nil; end;
        if self.scrollBox4 ~= nil then self.scrollBox4:destroy(); self.scrollBox4 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.flowLayout59 ~= nil then self.flowLayout59:destroy(); self.flowLayout59 = nil; end;
        if self.abaVaziaaba9 ~= nil then self.abaVaziaaba9:destroy(); self.abaVaziaaba9 = nil; end;
        if self.editaba7 ~= nil then self.editaba7:destroy(); self.editaba7 = nil; end;
        if self.edit32 ~= nil then self.edit32:destroy(); self.edit32 = nil; end;
        if self.horzLine6 ~= nil then self.horzLine6:destroy(); self.horzLine6 = nil; end;
        if self.flowLayout82 ~= nil then self.flowLayout82:destroy(); self.flowLayout82 = nil; end;
        if self.richEdit9 ~= nil then self.richEdit9:destroy(); self.richEdit9 = nil; end;
        if self.flowLayout72 ~= nil then self.flowLayout72:destroy(); self.flowLayout72 = nil; end;
        if self.edit20 ~= nil then self.edit20:destroy(); self.edit20 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmFichaPlanes()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmFichaPlanes();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmFichaPlanes = {
    newEditor = newfrmFichaPlanes, 
    new = newfrmFichaPlanes, 
    name = "frmFichaPlanes", 
    dataType = "FICHA_PLANES", 
    formType = "sheetTemplate", 
    formComponentName = "form", 
    title = "Ficha de Jogador [Planes]", 
    description=""};

frmFichaPlanes = _frmFichaPlanes;
Firecast.registrarForm(_frmFichaPlanes);
Firecast.registrarDataType(_frmFichaPlanes);

return _frmFichaPlanes;
