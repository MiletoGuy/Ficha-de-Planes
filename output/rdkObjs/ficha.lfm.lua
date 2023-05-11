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

    obj.tab1 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab1:setParent(obj.pgcPrincipal);
    obj.tab1:setTitle("Perfil");
    obj.tab1:setName("tab1");

    obj.popupAtributos = GUI.fromHandle(_obj_newObject("popup"));
    obj.popupAtributos:setParent(obj.tab1);
    obj.popupAtributos:setName("popupAtributos");
    obj.popupAtributos:setWidth(1050);
    obj.popupAtributos:setHeight(380);

    obj.tabelaAtributos = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.tabelaAtributos:setParent(obj.popupAtributos);
    obj.tabelaAtributos:setAlign("client");
    obj.tabelaAtributos:setAutoHeight(true);
    obj.tabelaAtributos:setMinWidth(1040);
    obj.tabelaAtributos:setMinScaledWidth(260);
    obj.tabelaAtributos:setHorzAlign("center");
    obj.tabelaAtributos:setMaxControlsPerLine(10);
    obj.tabelaAtributos:setName("tabelaAtributos");

    obj.flowLayout1 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout1:setParent(obj.tabelaAtributos);
    obj.flowLayout1:setName("flowLayout1");
    obj.flowLayout1:setWidth(100);
    obj.flowLayout1:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.flowLayout1);
    obj.edit1:setText("");
    lfm_setPropAsString(obj.edit1, "fontStyle",  "bold");
    obj.edit1:setName("edit1");
    obj.edit1:setReadOnly(true);
    obj.edit1:setCanFocus(false);
    obj.edit1:setHorzTextAlign("center");
    obj.edit1:setAlign("client");

    obj.flowLayout2 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout2:setParent(obj.tabelaAtributos);
    obj.flowLayout2:setName("flowLayout2");
    obj.flowLayout2:setWidth(100);
    obj.flowLayout2:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.flowLayout2);
    obj.edit2:setText("Nível");
    lfm_setPropAsString(obj.edit2, "fontStyle",  "bold");
    obj.edit2:setName("edit2");
    obj.edit2:setReadOnly(true);
    obj.edit2:setCanFocus(false);
    obj.edit2:setHorzTextAlign("center");
    obj.edit2:setAlign("client");

    obj.flowLayout3 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout3:setParent(obj.tabelaAtributos);
    obj.flowLayout3:setName("flowLayout3");
    obj.flowLayout3:setWidth(100);
    obj.flowLayout3:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.flowLayout3);
    obj.edit3:setText("Classe");
    lfm_setPropAsString(obj.edit3, "fontStyle",  "bold");
    obj.edit3:setName("edit3");
    obj.edit3:setReadOnly(true);
    obj.edit3:setCanFocus(false);
    obj.edit3:setHorzTextAlign("center");
    obj.edit3:setAlign("client");

    obj.flowLayout4 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout4:setParent(obj.tabelaAtributos);
    obj.flowLayout4:setName("flowLayout4");
    obj.flowLayout4:setWidth(100);
    obj.flowLayout4:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.flowLayout4);
    obj.edit4:setText("Raça");
    lfm_setPropAsString(obj.edit4, "fontStyle",  "bold");
    obj.edit4:setName("edit4");
    obj.edit4:setReadOnly(true);
    obj.edit4:setCanFocus(false);
    obj.edit4:setHorzTextAlign("center");
    obj.edit4:setAlign("client");

    obj.flowLayout5 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout5:setParent(obj.tabelaAtributos);
    obj.flowLayout5:setName("flowLayout5");
    obj.flowLayout5:setWidth(100);
    obj.flowLayout5:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.flowLayout5);
    obj.edit5:setText("Treino");
    lfm_setPropAsString(obj.edit5, "fontStyle",  "bold");
    obj.edit5:setName("edit5");
    obj.edit5:setReadOnly(true);
    obj.edit5:setCanFocus(false);
    obj.edit5:setHorzTextAlign("center");
    obj.edit5:setAlign("client");

    obj.flowLayout6 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout6:setParent(obj.tabelaAtributos);
    obj.flowLayout6:setName("flowLayout6");
    obj.flowLayout6:setWidth(100);
    obj.flowLayout6:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.flowLayout6);
    obj.edit6:setText("Outro");
    lfm_setPropAsString(obj.edit6, "fontStyle",  "bold");
    obj.edit6:setName("edit6");
    obj.edit6:setReadOnly(true);
    obj.edit6:setCanFocus(false);
    obj.edit6:setHorzTextAlign("center");
    obj.edit6:setAlign("client");

    obj.flowLayout7 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout7:setParent(obj.tabelaAtributos);
    obj.flowLayout7:setName("flowLayout7");
    obj.flowLayout7:setWidth(100);
    obj.flowLayout7:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.flowLayout7);
    obj.edit7:setText("Base");
    lfm_setPropAsString(obj.edit7, "fontStyle",  "bold");
    obj.edit7:setName("edit7");
    obj.edit7:setReadOnly(true);
    obj.edit7:setCanFocus(false);
    obj.edit7:setHorzTextAlign("center");
    obj.edit7:setAlign("client");

    obj.flowLayout8 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout8:setParent(obj.tabelaAtributos);
    obj.flowLayout8:setName("flowLayout8");
    obj.flowLayout8:setWidth(100);
    obj.flowLayout8:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.flowLayout8);
    obj.edit8:setText("Multiplicador");
    lfm_setPropAsString(obj.edit8, "fontStyle",  "bold");
    obj.edit8:setName("edit8");
    obj.edit8:setReadOnly(true);
    obj.edit8:setCanFocus(false);
    obj.edit8:setHorzTextAlign("center");
    obj.edit8:setAlign("client");

    obj.flowLayout9 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout9:setParent(obj.tabelaAtributos);
    obj.flowLayout9:setName("flowLayout9");
    obj.flowLayout9:setWidth(100);
    obj.flowLayout9:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit9 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.flowLayout9);
    obj.edit9:setText("Extra");
    lfm_setPropAsString(obj.edit9, "fontStyle",  "bold");
    obj.edit9:setName("edit9");
    obj.edit9:setReadOnly(true);
    obj.edit9:setCanFocus(false);
    obj.edit9:setHorzTextAlign("center");
    obj.edit9:setAlign("client");

    obj.flowLayout10 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout10:setParent(obj.tabelaAtributos);
    obj.flowLayout10:setName("flowLayout10");
    obj.flowLayout10:setWidth(100);
    obj.flowLayout10:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit10 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.flowLayout10);
    obj.edit10:setText("Total");
    lfm_setPropAsString(obj.edit10, "fontStyle",  "bold");
    obj.edit10:setName("edit10");
    obj.edit10:setReadOnly(true);
    obj.edit10:setCanFocus(false);
    obj.edit10:setHorzTextAlign("center");
    obj.edit10:setAlign("client");

    obj.flowLayout11 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout11:setParent(obj.tabelaAtributos);
    obj.flowLayout11:setName("flowLayout11");
    obj.flowLayout11:setWidth(100);
    obj.flowLayout11:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit11 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.flowLayout11);
    obj.edit11:setText("Constituição");
    lfm_setPropAsString(obj.edit11, "fontStyle",  "bold");
    obj.edit11:setName("edit11");
    obj.edit11:setReadOnly(true);
    obj.edit11:setCanFocus(false);
    obj.edit11:setHorzTextAlign("center");
    obj.edit11:setAlign("client");

    obj.flowLayout12 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout12:setParent(obj.tabelaAtributos);
    obj.flowLayout12:setName("flowLayout12");
    obj.flowLayout12:setWidth(100);
    obj.flowLayout12:setMargins({top=2,bottom=2,left=2,right=2});

    obj.nivelcon = GUI.fromHandle(_obj_newObject("edit"));
    obj.nivelcon:setParent(obj.flowLayout12);
    obj.nivelcon:setName("nivelcon");
    obj.nivelcon:setType("number");
    obj.nivelcon:setField("nivelcon");
    obj.nivelcon:setMin(0);
    obj.nivelcon:setFontColor("white");
    obj.nivelcon:setReadOnly(false);
    obj.nivelcon:setCanFocus(true);
    obj.nivelcon:setHorzTextAlign("center");
    obj.nivelcon:setAlign("client");

    obj.flowLayout13 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout13:setParent(obj.tabelaAtributos);
    obj.flowLayout13:setName("flowLayout13");
    obj.flowLayout13:setWidth(100);
    obj.flowLayout13:setMargins({top=2,bottom=2,left=2,right=2});

    obj.classecon = GUI.fromHandle(_obj_newObject("edit"));
    obj.classecon:setParent(obj.flowLayout13);
    obj.classecon:setName("classecon");
    obj.classecon:setType("number");
    obj.classecon:setField("classecon");
    obj.classecon:setMin(0);
    obj.classecon:setFontColor("white");
    obj.classecon:setReadOnly(false);
    obj.classecon:setCanFocus(true);
    obj.classecon:setHorzTextAlign("center");
    obj.classecon:setAlign("client");

    obj.flowLayout14 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout14:setParent(obj.tabelaAtributos);
    obj.flowLayout14:setName("flowLayout14");
    obj.flowLayout14:setWidth(100);
    obj.flowLayout14:setMargins({top=2,bottom=2,left=2,right=2});

    obj.racacon = GUI.fromHandle(_obj_newObject("edit"));
    obj.racacon:setParent(obj.flowLayout14);
    obj.racacon:setName("racacon");
    obj.racacon:setType("number");
    obj.racacon:setField("racacon");
    obj.racacon:setMin(0);
    obj.racacon:setFontColor("white");
    obj.racacon:setReadOnly(false);
    obj.racacon:setCanFocus(true);
    obj.racacon:setHorzTextAlign("center");
    obj.racacon:setAlign("client");

    obj.flowLayout15 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout15:setParent(obj.tabelaAtributos);
    obj.flowLayout15:setName("flowLayout15");
    obj.flowLayout15:setWidth(100);
    obj.flowLayout15:setMargins({top=2,bottom=2,left=2,right=2});

    obj.treinocon = GUI.fromHandle(_obj_newObject("edit"));
    obj.treinocon:setParent(obj.flowLayout15);
    obj.treinocon:setName("treinocon");
    obj.treinocon:setType("number");
    obj.treinocon:setField("treinocon");
    obj.treinocon:setMin(0);
    obj.treinocon:setFontColor("white");
    obj.treinocon:setReadOnly(false);
    obj.treinocon:setCanFocus(true);
    obj.treinocon:setHorzTextAlign("center");
    obj.treinocon:setAlign("client");

    obj.flowLayout16 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout16:setParent(obj.tabelaAtributos);
    obj.flowLayout16:setName("flowLayout16");
    obj.flowLayout16:setWidth(100);
    obj.flowLayout16:setMargins({top=2,bottom=2,left=2,right=2});

    obj.outrocon = GUI.fromHandle(_obj_newObject("edit"));
    obj.outrocon:setParent(obj.flowLayout16);
    obj.outrocon:setName("outrocon");
    obj.outrocon:setType("number");
    obj.outrocon:setField("outrocon");
    obj.outrocon:setMin(0);
    obj.outrocon:setFontColor("white");
    obj.outrocon:setReadOnly(false);
    obj.outrocon:setCanFocus(true);
    obj.outrocon:setHorzTextAlign("center");
    obj.outrocon:setAlign("client");

    obj.flowLayout17 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout17:setParent(obj.tabelaAtributos);
    obj.flowLayout17:setName("flowLayout17");
    obj.flowLayout17:setWidth(100);
    obj.flowLayout17:setMargins({top=2,bottom=2,left=2,right=2});

    obj.basecon = GUI.fromHandle(_obj_newObject("edit"));
    obj.basecon:setParent(obj.flowLayout17);
    obj.basecon:setName("basecon");
    obj.basecon:setType("number");
    obj.basecon:setField("basecon");
    obj.basecon:setMin(0);
    obj.basecon:setFontColor("white");
    obj.basecon:setReadOnly(true);
    obj.basecon:setCanFocus(false);
    obj.basecon:setHorzTextAlign("center");
    obj.basecon:setAlign("client");

    obj.flowLayout18 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout18:setParent(obj.tabelaAtributos);
    obj.flowLayout18:setName("flowLayout18");
    obj.flowLayout18:setWidth(100);
    obj.flowLayout18:setMargins({top=2,bottom=2,left=2,right=2});

    obj.multiplicadorcon = GUI.fromHandle(_obj_newObject("edit"));
    obj.multiplicadorcon:setParent(obj.flowLayout18);
    obj.multiplicadorcon:setName("multiplicadorcon");
    obj.multiplicadorcon:setType("number");
    obj.multiplicadorcon:setField("multiplicadorcon");
    obj.multiplicadorcon:setMin(0);
    obj.multiplicadorcon:setFontColor("white");
    obj.multiplicadorcon:setReadOnly(false);
    obj.multiplicadorcon:setCanFocus(true);
    obj.multiplicadorcon:setHorzTextAlign("center");
    obj.multiplicadorcon:setAlign("client");

    obj.flowLayout19 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout19:setParent(obj.tabelaAtributos);
    obj.flowLayout19:setName("flowLayout19");
    obj.flowLayout19:setWidth(100);
    obj.flowLayout19:setMargins({top=2,bottom=2,left=2,right=2});

    obj.extracon = GUI.fromHandle(_obj_newObject("edit"));
    obj.extracon:setParent(obj.flowLayout19);
    obj.extracon:setName("extracon");
    obj.extracon:setType("number");
    obj.extracon:setField("extracon");
    obj.extracon:setMin(0);
    obj.extracon:setFontColor("white");
    obj.extracon:setReadOnly(false);
    obj.extracon:setCanFocus(true);
    obj.extracon:setHorzTextAlign("center");
    obj.extracon:setAlign("client");

    obj.flowLayout20 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout20:setParent(obj.tabelaAtributos);
    obj.flowLayout20:setName("flowLayout20");
    obj.flowLayout20:setWidth(100);
    obj.flowLayout20:setMargins({top=2,bottom=2,left=2,right=2});

    obj.totalcon = GUI.fromHandle(_obj_newObject("edit"));
    obj.totalcon:setParent(obj.flowLayout20);
    obj.totalcon:setName("totalcon");
    obj.totalcon:setType("number");
    obj.totalcon:setField("totalcon");
    obj.totalcon:setMin(0);
    obj.totalcon:setFontColor("white");
    obj.totalcon:setReadOnly(true);
    obj.totalcon:setCanFocus(false);
    obj.totalcon:setHorzTextAlign("center");
    obj.totalcon:setAlign("client");

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.tabelaAtributos);
    obj.dataLink1:setFields({'nivelcon', 'classecon', 'racacon', 'treinocon', 'outrocon',
                           'basecon', 'multiplicadorcon', 'extracon', 'totalcon'});
    obj.dataLink1:setName("dataLink1");

    obj.flowLayout21 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout21:setParent(obj.tabelaAtributos);
    obj.flowLayout21:setName("flowLayout21");
    obj.flowLayout21:setWidth(100);
    obj.flowLayout21:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit12 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.flowLayout21);
    obj.edit12:setText("Força");
    lfm_setPropAsString(obj.edit12, "fontStyle",  "bold");
    obj.edit12:setName("edit12");
    obj.edit12:setReadOnly(true);
    obj.edit12:setCanFocus(false);
    obj.edit12:setHorzTextAlign("center");
    obj.edit12:setAlign("client");

    obj.flowLayout22 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout22:setParent(obj.tabelaAtributos);
    obj.flowLayout22:setName("flowLayout22");
    obj.flowLayout22:setWidth(100);
    obj.flowLayout22:setMargins({top=2,bottom=2,left=2,right=2});

    obj.nivelfor = GUI.fromHandle(_obj_newObject("edit"));
    obj.nivelfor:setParent(obj.flowLayout22);
    obj.nivelfor:setName("nivelfor");
    obj.nivelfor:setType("number");
    obj.nivelfor:setField("nivelfor");
    obj.nivelfor:setMin(0);
    obj.nivelfor:setFontColor("white");
    obj.nivelfor:setReadOnly(false);
    obj.nivelfor:setCanFocus(true);
    obj.nivelfor:setHorzTextAlign("center");
    obj.nivelfor:setAlign("client");

    obj.flowLayout23 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout23:setParent(obj.tabelaAtributos);
    obj.flowLayout23:setName("flowLayout23");
    obj.flowLayout23:setWidth(100);
    obj.flowLayout23:setMargins({top=2,bottom=2,left=2,right=2});

    obj.classefor = GUI.fromHandle(_obj_newObject("edit"));
    obj.classefor:setParent(obj.flowLayout23);
    obj.classefor:setName("classefor");
    obj.classefor:setType("number");
    obj.classefor:setField("classefor");
    obj.classefor:setMin(0);
    obj.classefor:setFontColor("white");
    obj.classefor:setReadOnly(false);
    obj.classefor:setCanFocus(true);
    obj.classefor:setHorzTextAlign("center");
    obj.classefor:setAlign("client");

    obj.flowLayout24 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout24:setParent(obj.tabelaAtributos);
    obj.flowLayout24:setName("flowLayout24");
    obj.flowLayout24:setWidth(100);
    obj.flowLayout24:setMargins({top=2,bottom=2,left=2,right=2});

    obj.racafor = GUI.fromHandle(_obj_newObject("edit"));
    obj.racafor:setParent(obj.flowLayout24);
    obj.racafor:setName("racafor");
    obj.racafor:setType("number");
    obj.racafor:setField("racafor");
    obj.racafor:setMin(0);
    obj.racafor:setFontColor("white");
    obj.racafor:setReadOnly(false);
    obj.racafor:setCanFocus(true);
    obj.racafor:setHorzTextAlign("center");
    obj.racafor:setAlign("client");

    obj.flowLayout25 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout25:setParent(obj.tabelaAtributos);
    obj.flowLayout25:setName("flowLayout25");
    obj.flowLayout25:setWidth(100);
    obj.flowLayout25:setMargins({top=2,bottom=2,left=2,right=2});

    obj.treinofor = GUI.fromHandle(_obj_newObject("edit"));
    obj.treinofor:setParent(obj.flowLayout25);
    obj.treinofor:setName("treinofor");
    obj.treinofor:setType("number");
    obj.treinofor:setField("treinofor");
    obj.treinofor:setMin(0);
    obj.treinofor:setFontColor("white");
    obj.treinofor:setReadOnly(false);
    obj.treinofor:setCanFocus(true);
    obj.treinofor:setHorzTextAlign("center");
    obj.treinofor:setAlign("client");

    obj.flowLayout26 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout26:setParent(obj.tabelaAtributos);
    obj.flowLayout26:setName("flowLayout26");
    obj.flowLayout26:setWidth(100);
    obj.flowLayout26:setMargins({top=2,bottom=2,left=2,right=2});

    obj.outrofor = GUI.fromHandle(_obj_newObject("edit"));
    obj.outrofor:setParent(obj.flowLayout26);
    obj.outrofor:setName("outrofor");
    obj.outrofor:setType("number");
    obj.outrofor:setField("outrofor");
    obj.outrofor:setMin(0);
    obj.outrofor:setFontColor("white");
    obj.outrofor:setReadOnly(false);
    obj.outrofor:setCanFocus(true);
    obj.outrofor:setHorzTextAlign("center");
    obj.outrofor:setAlign("client");

    obj.flowLayout27 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout27:setParent(obj.tabelaAtributos);
    obj.flowLayout27:setName("flowLayout27");
    obj.flowLayout27:setWidth(100);
    obj.flowLayout27:setMargins({top=2,bottom=2,left=2,right=2});

    obj.basefor = GUI.fromHandle(_obj_newObject("edit"));
    obj.basefor:setParent(obj.flowLayout27);
    obj.basefor:setName("basefor");
    obj.basefor:setType("number");
    obj.basefor:setField("basefor");
    obj.basefor:setMin(0);
    obj.basefor:setFontColor("white");
    obj.basefor:setReadOnly(true);
    obj.basefor:setCanFocus(false);
    obj.basefor:setHorzTextAlign("center");
    obj.basefor:setAlign("client");

    obj.flowLayout28 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout28:setParent(obj.tabelaAtributos);
    obj.flowLayout28:setName("flowLayout28");
    obj.flowLayout28:setWidth(100);
    obj.flowLayout28:setMargins({top=2,bottom=2,left=2,right=2});

    obj.multiplicadorfor = GUI.fromHandle(_obj_newObject("edit"));
    obj.multiplicadorfor:setParent(obj.flowLayout28);
    obj.multiplicadorfor:setName("multiplicadorfor");
    obj.multiplicadorfor:setType("number");
    obj.multiplicadorfor:setField("multiplicadorfor");
    obj.multiplicadorfor:setMin(0);
    obj.multiplicadorfor:setFontColor("white");
    obj.multiplicadorfor:setReadOnly(false);
    obj.multiplicadorfor:setCanFocus(true);
    obj.multiplicadorfor:setHorzTextAlign("center");
    obj.multiplicadorfor:setAlign("client");

    obj.flowLayout29 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout29:setParent(obj.tabelaAtributos);
    obj.flowLayout29:setName("flowLayout29");
    obj.flowLayout29:setWidth(100);
    obj.flowLayout29:setMargins({top=2,bottom=2,left=2,right=2});

    obj.extrafor = GUI.fromHandle(_obj_newObject("edit"));
    obj.extrafor:setParent(obj.flowLayout29);
    obj.extrafor:setName("extrafor");
    obj.extrafor:setType("number");
    obj.extrafor:setField("extrafor");
    obj.extrafor:setMin(0);
    obj.extrafor:setFontColor("white");
    obj.extrafor:setReadOnly(false);
    obj.extrafor:setCanFocus(true);
    obj.extrafor:setHorzTextAlign("center");
    obj.extrafor:setAlign("client");

    obj.flowLayout30 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout30:setParent(obj.tabelaAtributos);
    obj.flowLayout30:setName("flowLayout30");
    obj.flowLayout30:setWidth(100);
    obj.flowLayout30:setMargins({top=2,bottom=2,left=2,right=2});

    obj.totalfor = GUI.fromHandle(_obj_newObject("edit"));
    obj.totalfor:setParent(obj.flowLayout30);
    obj.totalfor:setName("totalfor");
    obj.totalfor:setType("number");
    obj.totalfor:setField("totalfor");
    obj.totalfor:setMin(0);
    obj.totalfor:setFontColor("white");
    obj.totalfor:setReadOnly(true);
    obj.totalfor:setCanFocus(false);
    obj.totalfor:setHorzTextAlign("center");
    obj.totalfor:setAlign("client");

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj.tabelaAtributos);
    obj.dataLink2:setFields({'nivelfor', 'classefor', 'racafor', 'treinofor', 'outrofor',
                           'basefor', 'multiplicadorfor', 'extrafor', 'totalfor'});
    obj.dataLink2:setName("dataLink2");

    obj.flowLayout31 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout31:setParent(obj.tabelaAtributos);
    obj.flowLayout31:setName("flowLayout31");
    obj.flowLayout31:setWidth(100);
    obj.flowLayout31:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit13 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.flowLayout31);
    obj.edit13:setText("Destreza");
    lfm_setPropAsString(obj.edit13, "fontStyle",  "bold");
    obj.edit13:setName("edit13");
    obj.edit13:setReadOnly(true);
    obj.edit13:setCanFocus(false);
    obj.edit13:setHorzTextAlign("center");
    obj.edit13:setAlign("client");

    obj.flowLayout32 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout32:setParent(obj.tabelaAtributos);
    obj.flowLayout32:setName("flowLayout32");
    obj.flowLayout32:setWidth(100);
    obj.flowLayout32:setMargins({top=2,bottom=2,left=2,right=2});

    obj.niveldex = GUI.fromHandle(_obj_newObject("edit"));
    obj.niveldex:setParent(obj.flowLayout32);
    obj.niveldex:setName("niveldex");
    obj.niveldex:setType("number");
    obj.niveldex:setField("niveldex");
    obj.niveldex:setMin(0);
    obj.niveldex:setFontColor("white");
    obj.niveldex:setReadOnly(false);
    obj.niveldex:setCanFocus(true);
    obj.niveldex:setHorzTextAlign("center");
    obj.niveldex:setAlign("client");

    obj.flowLayout33 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout33:setParent(obj.tabelaAtributos);
    obj.flowLayout33:setName("flowLayout33");
    obj.flowLayout33:setWidth(100);
    obj.flowLayout33:setMargins({top=2,bottom=2,left=2,right=2});

    obj.classedex = GUI.fromHandle(_obj_newObject("edit"));
    obj.classedex:setParent(obj.flowLayout33);
    obj.classedex:setName("classedex");
    obj.classedex:setType("number");
    obj.classedex:setField("classedex");
    obj.classedex:setMin(0);
    obj.classedex:setFontColor("white");
    obj.classedex:setReadOnly(false);
    obj.classedex:setCanFocus(true);
    obj.classedex:setHorzTextAlign("center");
    obj.classedex:setAlign("client");

    obj.flowLayout34 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout34:setParent(obj.tabelaAtributos);
    obj.flowLayout34:setName("flowLayout34");
    obj.flowLayout34:setWidth(100);
    obj.flowLayout34:setMargins({top=2,bottom=2,left=2,right=2});

    obj.racadex = GUI.fromHandle(_obj_newObject("edit"));
    obj.racadex:setParent(obj.flowLayout34);
    obj.racadex:setName("racadex");
    obj.racadex:setType("number");
    obj.racadex:setField("racadex");
    obj.racadex:setMin(0);
    obj.racadex:setFontColor("white");
    obj.racadex:setReadOnly(false);
    obj.racadex:setCanFocus(true);
    obj.racadex:setHorzTextAlign("center");
    obj.racadex:setAlign("client");

    obj.flowLayout35 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout35:setParent(obj.tabelaAtributos);
    obj.flowLayout35:setName("flowLayout35");
    obj.flowLayout35:setWidth(100);
    obj.flowLayout35:setMargins({top=2,bottom=2,left=2,right=2});

    obj.treinodex = GUI.fromHandle(_obj_newObject("edit"));
    obj.treinodex:setParent(obj.flowLayout35);
    obj.treinodex:setName("treinodex");
    obj.treinodex:setType("number");
    obj.treinodex:setField("treinodex");
    obj.treinodex:setMin(0);
    obj.treinodex:setFontColor("white");
    obj.treinodex:setReadOnly(false);
    obj.treinodex:setCanFocus(true);
    obj.treinodex:setHorzTextAlign("center");
    obj.treinodex:setAlign("client");

    obj.flowLayout36 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout36:setParent(obj.tabelaAtributos);
    obj.flowLayout36:setName("flowLayout36");
    obj.flowLayout36:setWidth(100);
    obj.flowLayout36:setMargins({top=2,bottom=2,left=2,right=2});

    obj.outrodex = GUI.fromHandle(_obj_newObject("edit"));
    obj.outrodex:setParent(obj.flowLayout36);
    obj.outrodex:setName("outrodex");
    obj.outrodex:setType("number");
    obj.outrodex:setField("outrodex");
    obj.outrodex:setMin(0);
    obj.outrodex:setFontColor("white");
    obj.outrodex:setReadOnly(false);
    obj.outrodex:setCanFocus(true);
    obj.outrodex:setHorzTextAlign("center");
    obj.outrodex:setAlign("client");

    obj.flowLayout37 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout37:setParent(obj.tabelaAtributos);
    obj.flowLayout37:setName("flowLayout37");
    obj.flowLayout37:setWidth(100);
    obj.flowLayout37:setMargins({top=2,bottom=2,left=2,right=2});

    obj.basedex = GUI.fromHandle(_obj_newObject("edit"));
    obj.basedex:setParent(obj.flowLayout37);
    obj.basedex:setName("basedex");
    obj.basedex:setType("number");
    obj.basedex:setField("basedex");
    obj.basedex:setMin(0);
    obj.basedex:setFontColor("white");
    obj.basedex:setReadOnly(true);
    obj.basedex:setCanFocus(false);
    obj.basedex:setHorzTextAlign("center");
    obj.basedex:setAlign("client");

    obj.flowLayout38 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout38:setParent(obj.tabelaAtributos);
    obj.flowLayout38:setName("flowLayout38");
    obj.flowLayout38:setWidth(100);
    obj.flowLayout38:setMargins({top=2,bottom=2,left=2,right=2});

    obj.multiplicadordex = GUI.fromHandle(_obj_newObject("edit"));
    obj.multiplicadordex:setParent(obj.flowLayout38);
    obj.multiplicadordex:setName("multiplicadordex");
    obj.multiplicadordex:setType("number");
    obj.multiplicadordex:setField("multiplicadordex");
    obj.multiplicadordex:setMin(0);
    obj.multiplicadordex:setFontColor("white");
    obj.multiplicadordex:setReadOnly(false);
    obj.multiplicadordex:setCanFocus(true);
    obj.multiplicadordex:setHorzTextAlign("center");
    obj.multiplicadordex:setAlign("client");

    obj.flowLayout39 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout39:setParent(obj.tabelaAtributos);
    obj.flowLayout39:setName("flowLayout39");
    obj.flowLayout39:setWidth(100);
    obj.flowLayout39:setMargins({top=2,bottom=2,left=2,right=2});

    obj.extradex = GUI.fromHandle(_obj_newObject("edit"));
    obj.extradex:setParent(obj.flowLayout39);
    obj.extradex:setName("extradex");
    obj.extradex:setType("number");
    obj.extradex:setField("extradex");
    obj.extradex:setMin(0);
    obj.extradex:setFontColor("white");
    obj.extradex:setReadOnly(false);
    obj.extradex:setCanFocus(true);
    obj.extradex:setHorzTextAlign("center");
    obj.extradex:setAlign("client");

    obj.flowLayout40 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout40:setParent(obj.tabelaAtributos);
    obj.flowLayout40:setName("flowLayout40");
    obj.flowLayout40:setWidth(100);
    obj.flowLayout40:setMargins({top=2,bottom=2,left=2,right=2});

    obj.totaldex = GUI.fromHandle(_obj_newObject("edit"));
    obj.totaldex:setParent(obj.flowLayout40);
    obj.totaldex:setName("totaldex");
    obj.totaldex:setType("number");
    obj.totaldex:setField("totaldex");
    obj.totaldex:setMin(0);
    obj.totaldex:setFontColor("white");
    obj.totaldex:setReadOnly(true);
    obj.totaldex:setCanFocus(false);
    obj.totaldex:setHorzTextAlign("center");
    obj.totaldex:setAlign("client");

    obj.dataLink3 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj.tabelaAtributos);
    obj.dataLink3:setFields({'niveldex', 'classedex', 'racadex', 'treinodex', 'outrodex',
                           'basedex', 'multiplicadordex', 'extradex', 'totaldex'});
    obj.dataLink3:setName("dataLink3");

    obj.flowLayout41 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout41:setParent(obj.tabelaAtributos);
    obj.flowLayout41:setName("flowLayout41");
    obj.flowLayout41:setWidth(100);
    obj.flowLayout41:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit14 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.flowLayout41);
    obj.edit14:setText("Carisma");
    lfm_setPropAsString(obj.edit14, "fontStyle",  "bold");
    obj.edit14:setName("edit14");
    obj.edit14:setReadOnly(true);
    obj.edit14:setCanFocus(false);
    obj.edit14:setHorzTextAlign("center");
    obj.edit14:setAlign("client");

    obj.flowLayout42 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout42:setParent(obj.tabelaAtributos);
    obj.flowLayout42:setName("flowLayout42");
    obj.flowLayout42:setWidth(100);
    obj.flowLayout42:setMargins({top=2,bottom=2,left=2,right=2});

    obj.nivelcar = GUI.fromHandle(_obj_newObject("edit"));
    obj.nivelcar:setParent(obj.flowLayout42);
    obj.nivelcar:setName("nivelcar");
    obj.nivelcar:setType("number");
    obj.nivelcar:setField("nivelcar");
    obj.nivelcar:setMin(0);
    obj.nivelcar:setFontColor("white");
    obj.nivelcar:setReadOnly(false);
    obj.nivelcar:setCanFocus(true);
    obj.nivelcar:setHorzTextAlign("center");
    obj.nivelcar:setAlign("client");

    obj.flowLayout43 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout43:setParent(obj.tabelaAtributos);
    obj.flowLayout43:setName("flowLayout43");
    obj.flowLayout43:setWidth(100);
    obj.flowLayout43:setMargins({top=2,bottom=2,left=2,right=2});

    obj.classecar = GUI.fromHandle(_obj_newObject("edit"));
    obj.classecar:setParent(obj.flowLayout43);
    obj.classecar:setName("classecar");
    obj.classecar:setType("number");
    obj.classecar:setField("classecar");
    obj.classecar:setMin(0);
    obj.classecar:setFontColor("white");
    obj.classecar:setReadOnly(false);
    obj.classecar:setCanFocus(true);
    obj.classecar:setHorzTextAlign("center");
    obj.classecar:setAlign("client");

    obj.flowLayout44 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout44:setParent(obj.tabelaAtributos);
    obj.flowLayout44:setName("flowLayout44");
    obj.flowLayout44:setWidth(100);
    obj.flowLayout44:setMargins({top=2,bottom=2,left=2,right=2});

    obj.racacar = GUI.fromHandle(_obj_newObject("edit"));
    obj.racacar:setParent(obj.flowLayout44);
    obj.racacar:setName("racacar");
    obj.racacar:setType("number");
    obj.racacar:setField("racacar");
    obj.racacar:setMin(0);
    obj.racacar:setFontColor("white");
    obj.racacar:setReadOnly(false);
    obj.racacar:setCanFocus(true);
    obj.racacar:setHorzTextAlign("center");
    obj.racacar:setAlign("client");

    obj.flowLayout45 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout45:setParent(obj.tabelaAtributos);
    obj.flowLayout45:setName("flowLayout45");
    obj.flowLayout45:setWidth(100);
    obj.flowLayout45:setMargins({top=2,bottom=2,left=2,right=2});

    obj.treinocar = GUI.fromHandle(_obj_newObject("edit"));
    obj.treinocar:setParent(obj.flowLayout45);
    obj.treinocar:setName("treinocar");
    obj.treinocar:setType("number");
    obj.treinocar:setField("treinocar");
    obj.treinocar:setMin(0);
    obj.treinocar:setFontColor("white");
    obj.treinocar:setReadOnly(false);
    obj.treinocar:setCanFocus(true);
    obj.treinocar:setHorzTextAlign("center");
    obj.treinocar:setAlign("client");

    obj.flowLayout46 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout46:setParent(obj.tabelaAtributos);
    obj.flowLayout46:setName("flowLayout46");
    obj.flowLayout46:setWidth(100);
    obj.flowLayout46:setMargins({top=2,bottom=2,left=2,right=2});

    obj.outrocar = GUI.fromHandle(_obj_newObject("edit"));
    obj.outrocar:setParent(obj.flowLayout46);
    obj.outrocar:setName("outrocar");
    obj.outrocar:setType("number");
    obj.outrocar:setField("outrocar");
    obj.outrocar:setMin(0);
    obj.outrocar:setFontColor("white");
    obj.outrocar:setReadOnly(false);
    obj.outrocar:setCanFocus(true);
    obj.outrocar:setHorzTextAlign("center");
    obj.outrocar:setAlign("client");

    obj.flowLayout47 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout47:setParent(obj.tabelaAtributos);
    obj.flowLayout47:setName("flowLayout47");
    obj.flowLayout47:setWidth(100);
    obj.flowLayout47:setMargins({top=2,bottom=2,left=2,right=2});

    obj.basecar = GUI.fromHandle(_obj_newObject("edit"));
    obj.basecar:setParent(obj.flowLayout47);
    obj.basecar:setName("basecar");
    obj.basecar:setType("number");
    obj.basecar:setField("basecar");
    obj.basecar:setMin(0);
    obj.basecar:setFontColor("white");
    obj.basecar:setReadOnly(true);
    obj.basecar:setCanFocus(false);
    obj.basecar:setHorzTextAlign("center");
    obj.basecar:setAlign("client");

    obj.flowLayout48 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout48:setParent(obj.tabelaAtributos);
    obj.flowLayout48:setName("flowLayout48");
    obj.flowLayout48:setWidth(100);
    obj.flowLayout48:setMargins({top=2,bottom=2,left=2,right=2});

    obj.multiplicadorcar = GUI.fromHandle(_obj_newObject("edit"));
    obj.multiplicadorcar:setParent(obj.flowLayout48);
    obj.multiplicadorcar:setName("multiplicadorcar");
    obj.multiplicadorcar:setType("number");
    obj.multiplicadorcar:setField("multiplicadorcar");
    obj.multiplicadorcar:setMin(0);
    obj.multiplicadorcar:setFontColor("white");
    obj.multiplicadorcar:setReadOnly(false);
    obj.multiplicadorcar:setCanFocus(true);
    obj.multiplicadorcar:setHorzTextAlign("center");
    obj.multiplicadorcar:setAlign("client");

    obj.flowLayout49 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout49:setParent(obj.tabelaAtributos);
    obj.flowLayout49:setName("flowLayout49");
    obj.flowLayout49:setWidth(100);
    obj.flowLayout49:setMargins({top=2,bottom=2,left=2,right=2});

    obj.extracar = GUI.fromHandle(_obj_newObject("edit"));
    obj.extracar:setParent(obj.flowLayout49);
    obj.extracar:setName("extracar");
    obj.extracar:setType("number");
    obj.extracar:setField("extracar");
    obj.extracar:setMin(0);
    obj.extracar:setFontColor("white");
    obj.extracar:setReadOnly(false);
    obj.extracar:setCanFocus(true);
    obj.extracar:setHorzTextAlign("center");
    obj.extracar:setAlign("client");

    obj.flowLayout50 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout50:setParent(obj.tabelaAtributos);
    obj.flowLayout50:setName("flowLayout50");
    obj.flowLayout50:setWidth(100);
    obj.flowLayout50:setMargins({top=2,bottom=2,left=2,right=2});

    obj.totalcar = GUI.fromHandle(_obj_newObject("edit"));
    obj.totalcar:setParent(obj.flowLayout50);
    obj.totalcar:setName("totalcar");
    obj.totalcar:setType("number");
    obj.totalcar:setField("totalcar");
    obj.totalcar:setMin(0);
    obj.totalcar:setFontColor("white");
    obj.totalcar:setReadOnly(true);
    obj.totalcar:setCanFocus(false);
    obj.totalcar:setHorzTextAlign("center");
    obj.totalcar:setAlign("client");

    obj.dataLink4 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj.tabelaAtributos);
    obj.dataLink4:setFields({'nivelcar', 'classecar', 'racacar', 'treinocar', 'outrocar',
                           'basecar', 'multiplicadorcar', 'extracar', 'totalcar'});
    obj.dataLink4:setName("dataLink4");

    obj.flowLayout51 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout51:setParent(obj.tabelaAtributos);
    obj.flowLayout51:setName("flowLayout51");
    obj.flowLayout51:setWidth(100);
    obj.flowLayout51:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit15 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj.flowLayout51);
    obj.edit15:setText("Inteligência");
    lfm_setPropAsString(obj.edit15, "fontStyle",  "bold");
    obj.edit15:setName("edit15");
    obj.edit15:setReadOnly(true);
    obj.edit15:setCanFocus(false);
    obj.edit15:setHorzTextAlign("center");
    obj.edit15:setAlign("client");

    obj.flowLayout52 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout52:setParent(obj.tabelaAtributos);
    obj.flowLayout52:setName("flowLayout52");
    obj.flowLayout52:setWidth(100);
    obj.flowLayout52:setMargins({top=2,bottom=2,left=2,right=2});

    obj.nivelint = GUI.fromHandle(_obj_newObject("edit"));
    obj.nivelint:setParent(obj.flowLayout52);
    obj.nivelint:setName("nivelint");
    obj.nivelint:setType("number");
    obj.nivelint:setField("nivelint");
    obj.nivelint:setMin(0);
    obj.nivelint:setFontColor("white");
    obj.nivelint:setReadOnly(false);
    obj.nivelint:setCanFocus(true);
    obj.nivelint:setHorzTextAlign("center");
    obj.nivelint:setAlign("client");

    obj.flowLayout53 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout53:setParent(obj.tabelaAtributos);
    obj.flowLayout53:setName("flowLayout53");
    obj.flowLayout53:setWidth(100);
    obj.flowLayout53:setMargins({top=2,bottom=2,left=2,right=2});

    obj.classeint = GUI.fromHandle(_obj_newObject("edit"));
    obj.classeint:setParent(obj.flowLayout53);
    obj.classeint:setName("classeint");
    obj.classeint:setType("number");
    obj.classeint:setField("classeint");
    obj.classeint:setMin(0);
    obj.classeint:setFontColor("white");
    obj.classeint:setReadOnly(false);
    obj.classeint:setCanFocus(true);
    obj.classeint:setHorzTextAlign("center");
    obj.classeint:setAlign("client");

    obj.flowLayout54 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout54:setParent(obj.tabelaAtributos);
    obj.flowLayout54:setName("flowLayout54");
    obj.flowLayout54:setWidth(100);
    obj.flowLayout54:setMargins({top=2,bottom=2,left=2,right=2});

    obj.racaint = GUI.fromHandle(_obj_newObject("edit"));
    obj.racaint:setParent(obj.flowLayout54);
    obj.racaint:setName("racaint");
    obj.racaint:setType("number");
    obj.racaint:setField("racaint");
    obj.racaint:setMin(0);
    obj.racaint:setFontColor("white");
    obj.racaint:setReadOnly(false);
    obj.racaint:setCanFocus(true);
    obj.racaint:setHorzTextAlign("center");
    obj.racaint:setAlign("client");

    obj.flowLayout55 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout55:setParent(obj.tabelaAtributos);
    obj.flowLayout55:setName("flowLayout55");
    obj.flowLayout55:setWidth(100);
    obj.flowLayout55:setMargins({top=2,bottom=2,left=2,right=2});

    obj.treinoint = GUI.fromHandle(_obj_newObject("edit"));
    obj.treinoint:setParent(obj.flowLayout55);
    obj.treinoint:setName("treinoint");
    obj.treinoint:setType("number");
    obj.treinoint:setField("treinoint");
    obj.treinoint:setMin(0);
    obj.treinoint:setFontColor("white");
    obj.treinoint:setReadOnly(false);
    obj.treinoint:setCanFocus(true);
    obj.treinoint:setHorzTextAlign("center");
    obj.treinoint:setAlign("client");

    obj.flowLayout56 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout56:setParent(obj.tabelaAtributos);
    obj.flowLayout56:setName("flowLayout56");
    obj.flowLayout56:setWidth(100);
    obj.flowLayout56:setMargins({top=2,bottom=2,left=2,right=2});

    obj.outroint = GUI.fromHandle(_obj_newObject("edit"));
    obj.outroint:setParent(obj.flowLayout56);
    obj.outroint:setName("outroint");
    obj.outroint:setType("number");
    obj.outroint:setField("outroint");
    obj.outroint:setMin(0);
    obj.outroint:setFontColor("white");
    obj.outroint:setReadOnly(false);
    obj.outroint:setCanFocus(true);
    obj.outroint:setHorzTextAlign("center");
    obj.outroint:setAlign("client");

    obj.flowLayout57 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout57:setParent(obj.tabelaAtributos);
    obj.flowLayout57:setName("flowLayout57");
    obj.flowLayout57:setWidth(100);
    obj.flowLayout57:setMargins({top=2,bottom=2,left=2,right=2});

    obj.baseint = GUI.fromHandle(_obj_newObject("edit"));
    obj.baseint:setParent(obj.flowLayout57);
    obj.baseint:setName("baseint");
    obj.baseint:setType("number");
    obj.baseint:setField("baseint");
    obj.baseint:setMin(0);
    obj.baseint:setFontColor("white");
    obj.baseint:setReadOnly(true);
    obj.baseint:setCanFocus(false);
    obj.baseint:setHorzTextAlign("center");
    obj.baseint:setAlign("client");

    obj.flowLayout58 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout58:setParent(obj.tabelaAtributos);
    obj.flowLayout58:setName("flowLayout58");
    obj.flowLayout58:setWidth(100);
    obj.flowLayout58:setMargins({top=2,bottom=2,left=2,right=2});

    obj.multiplicadorint = GUI.fromHandle(_obj_newObject("edit"));
    obj.multiplicadorint:setParent(obj.flowLayout58);
    obj.multiplicadorint:setName("multiplicadorint");
    obj.multiplicadorint:setType("number");
    obj.multiplicadorint:setField("multiplicadorint");
    obj.multiplicadorint:setMin(0);
    obj.multiplicadorint:setFontColor("white");
    obj.multiplicadorint:setReadOnly(false);
    obj.multiplicadorint:setCanFocus(true);
    obj.multiplicadorint:setHorzTextAlign("center");
    obj.multiplicadorint:setAlign("client");

    obj.flowLayout59 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout59:setParent(obj.tabelaAtributos);
    obj.flowLayout59:setName("flowLayout59");
    obj.flowLayout59:setWidth(100);
    obj.flowLayout59:setMargins({top=2,bottom=2,left=2,right=2});

    obj.extraint = GUI.fromHandle(_obj_newObject("edit"));
    obj.extraint:setParent(obj.flowLayout59);
    obj.extraint:setName("extraint");
    obj.extraint:setType("number");
    obj.extraint:setField("extraint");
    obj.extraint:setMin(0);
    obj.extraint:setFontColor("white");
    obj.extraint:setReadOnly(false);
    obj.extraint:setCanFocus(true);
    obj.extraint:setHorzTextAlign("center");
    obj.extraint:setAlign("client");

    obj.flowLayout60 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout60:setParent(obj.tabelaAtributos);
    obj.flowLayout60:setName("flowLayout60");
    obj.flowLayout60:setWidth(100);
    obj.flowLayout60:setMargins({top=2,bottom=2,left=2,right=2});

    obj.totalint = GUI.fromHandle(_obj_newObject("edit"));
    obj.totalint:setParent(obj.flowLayout60);
    obj.totalint:setName("totalint");
    obj.totalint:setType("number");
    obj.totalint:setField("totalint");
    obj.totalint:setMin(0);
    obj.totalint:setFontColor("white");
    obj.totalint:setReadOnly(true);
    obj.totalint:setCanFocus(false);
    obj.totalint:setHorzTextAlign("center");
    obj.totalint:setAlign("client");

    obj.dataLink5 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink5:setParent(obj.tabelaAtributos);
    obj.dataLink5:setFields({'nivelint', 'classeint', 'racaint', 'treinoint', 'outroint',
                           'baseint', 'multiplicadorint', 'extraint', 'totalint'});
    obj.dataLink5:setName("dataLink5");

    obj.flowLayout61 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout61:setParent(obj.tabelaAtributos);
    obj.flowLayout61:setName("flowLayout61");
    obj.flowLayout61:setWidth(100);
    obj.flowLayout61:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit16 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj.flowLayout61);
    obj.edit16:setText("Sabedoria");
    lfm_setPropAsString(obj.edit16, "fontStyle",  "bold");
    obj.edit16:setName("edit16");
    obj.edit16:setReadOnly(true);
    obj.edit16:setCanFocus(false);
    obj.edit16:setHorzTextAlign("center");
    obj.edit16:setAlign("client");

    obj.flowLayout62 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout62:setParent(obj.tabelaAtributos);
    obj.flowLayout62:setName("flowLayout62");
    obj.flowLayout62:setWidth(100);
    obj.flowLayout62:setMargins({top=2,bottom=2,left=2,right=2});

    obj.nivelsab = GUI.fromHandle(_obj_newObject("edit"));
    obj.nivelsab:setParent(obj.flowLayout62);
    obj.nivelsab:setName("nivelsab");
    obj.nivelsab:setType("number");
    obj.nivelsab:setField("nivelsab");
    obj.nivelsab:setMin(0);
    obj.nivelsab:setFontColor("white");
    obj.nivelsab:setReadOnly(false);
    obj.nivelsab:setCanFocus(true);
    obj.nivelsab:setHorzTextAlign("center");
    obj.nivelsab:setAlign("client");

    obj.flowLayout63 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout63:setParent(obj.tabelaAtributos);
    obj.flowLayout63:setName("flowLayout63");
    obj.flowLayout63:setWidth(100);
    obj.flowLayout63:setMargins({top=2,bottom=2,left=2,right=2});

    obj.classesab = GUI.fromHandle(_obj_newObject("edit"));
    obj.classesab:setParent(obj.flowLayout63);
    obj.classesab:setName("classesab");
    obj.classesab:setType("number");
    obj.classesab:setField("classesab");
    obj.classesab:setMin(0);
    obj.classesab:setFontColor("white");
    obj.classesab:setReadOnly(false);
    obj.classesab:setCanFocus(true);
    obj.classesab:setHorzTextAlign("center");
    obj.classesab:setAlign("client");

    obj.flowLayout64 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout64:setParent(obj.tabelaAtributos);
    obj.flowLayout64:setName("flowLayout64");
    obj.flowLayout64:setWidth(100);
    obj.flowLayout64:setMargins({top=2,bottom=2,left=2,right=2});

    obj.racasab = GUI.fromHandle(_obj_newObject("edit"));
    obj.racasab:setParent(obj.flowLayout64);
    obj.racasab:setName("racasab");
    obj.racasab:setType("number");
    obj.racasab:setField("racasab");
    obj.racasab:setMin(0);
    obj.racasab:setFontColor("white");
    obj.racasab:setReadOnly(false);
    obj.racasab:setCanFocus(true);
    obj.racasab:setHorzTextAlign("center");
    obj.racasab:setAlign("client");

    obj.flowLayout65 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout65:setParent(obj.tabelaAtributos);
    obj.flowLayout65:setName("flowLayout65");
    obj.flowLayout65:setWidth(100);
    obj.flowLayout65:setMargins({top=2,bottom=2,left=2,right=2});

    obj.treinosab = GUI.fromHandle(_obj_newObject("edit"));
    obj.treinosab:setParent(obj.flowLayout65);
    obj.treinosab:setName("treinosab");
    obj.treinosab:setType("number");
    obj.treinosab:setField("treinosab");
    obj.treinosab:setMin(0);
    obj.treinosab:setFontColor("white");
    obj.treinosab:setReadOnly(false);
    obj.treinosab:setCanFocus(true);
    obj.treinosab:setHorzTextAlign("center");
    obj.treinosab:setAlign("client");

    obj.flowLayout66 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout66:setParent(obj.tabelaAtributos);
    obj.flowLayout66:setName("flowLayout66");
    obj.flowLayout66:setWidth(100);
    obj.flowLayout66:setMargins({top=2,bottom=2,left=2,right=2});

    obj.outrosab = GUI.fromHandle(_obj_newObject("edit"));
    obj.outrosab:setParent(obj.flowLayout66);
    obj.outrosab:setName("outrosab");
    obj.outrosab:setType("number");
    obj.outrosab:setField("outrosab");
    obj.outrosab:setMin(0);
    obj.outrosab:setFontColor("white");
    obj.outrosab:setReadOnly(false);
    obj.outrosab:setCanFocus(true);
    obj.outrosab:setHorzTextAlign("center");
    obj.outrosab:setAlign("client");

    obj.flowLayout67 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout67:setParent(obj.tabelaAtributos);
    obj.flowLayout67:setName("flowLayout67");
    obj.flowLayout67:setWidth(100);
    obj.flowLayout67:setMargins({top=2,bottom=2,left=2,right=2});

    obj.basesab = GUI.fromHandle(_obj_newObject("edit"));
    obj.basesab:setParent(obj.flowLayout67);
    obj.basesab:setName("basesab");
    obj.basesab:setType("number");
    obj.basesab:setField("basesab");
    obj.basesab:setMin(0);
    obj.basesab:setFontColor("white");
    obj.basesab:setReadOnly(true);
    obj.basesab:setCanFocus(false);
    obj.basesab:setHorzTextAlign("center");
    obj.basesab:setAlign("client");

    obj.flowLayout68 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout68:setParent(obj.tabelaAtributos);
    obj.flowLayout68:setName("flowLayout68");
    obj.flowLayout68:setWidth(100);
    obj.flowLayout68:setMargins({top=2,bottom=2,left=2,right=2});

    obj.multiplicadorsab = GUI.fromHandle(_obj_newObject("edit"));
    obj.multiplicadorsab:setParent(obj.flowLayout68);
    obj.multiplicadorsab:setName("multiplicadorsab");
    obj.multiplicadorsab:setType("number");
    obj.multiplicadorsab:setField("multiplicadorsab");
    obj.multiplicadorsab:setMin(0);
    obj.multiplicadorsab:setFontColor("white");
    obj.multiplicadorsab:setReadOnly(false);
    obj.multiplicadorsab:setCanFocus(true);
    obj.multiplicadorsab:setHorzTextAlign("center");
    obj.multiplicadorsab:setAlign("client");

    obj.flowLayout69 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout69:setParent(obj.tabelaAtributos);
    obj.flowLayout69:setName("flowLayout69");
    obj.flowLayout69:setWidth(100);
    obj.flowLayout69:setMargins({top=2,bottom=2,left=2,right=2});

    obj.extrasab = GUI.fromHandle(_obj_newObject("edit"));
    obj.extrasab:setParent(obj.flowLayout69);
    obj.extrasab:setName("extrasab");
    obj.extrasab:setType("number");
    obj.extrasab:setField("extrasab");
    obj.extrasab:setMin(0);
    obj.extrasab:setFontColor("white");
    obj.extrasab:setReadOnly(false);
    obj.extrasab:setCanFocus(true);
    obj.extrasab:setHorzTextAlign("center");
    obj.extrasab:setAlign("client");

    obj.flowLayout70 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout70:setParent(obj.tabelaAtributos);
    obj.flowLayout70:setName("flowLayout70");
    obj.flowLayout70:setWidth(100);
    obj.flowLayout70:setMargins({top=2,bottom=2,left=2,right=2});

    obj.totalsab = GUI.fromHandle(_obj_newObject("edit"));
    obj.totalsab:setParent(obj.flowLayout70);
    obj.totalsab:setName("totalsab");
    obj.totalsab:setType("number");
    obj.totalsab:setField("totalsab");
    obj.totalsab:setMin(0);
    obj.totalsab:setFontColor("white");
    obj.totalsab:setReadOnly(true);
    obj.totalsab:setCanFocus(false);
    obj.totalsab:setHorzTextAlign("center");
    obj.totalsab:setAlign("client");

    obj.dataLink6 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink6:setParent(obj.tabelaAtributos);
    obj.dataLink6:setFields({'nivelsab', 'classesab', 'racasab', 'treinosab', 'outrosab',
                           'basesab', 'multiplicadorsab', 'extrasab', 'totalsab'});
    obj.dataLink6:setName("dataLink6");

    obj.popupAtributosDestreza = GUI.fromHandle(_obj_newObject("popup"));
    obj.popupAtributosDestreza:setParent(obj.tab1);
    obj.popupAtributosDestreza:setName("popupAtributosDestreza");
    obj.popupAtributosDestreza:setWidth(950);
    obj.popupAtributosDestreza:setHeight(270);

    obj.tabelaAtributosDestreza = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.tabelaAtributosDestreza:setParent(obj.popupAtributosDestreza);
    obj.tabelaAtributosDestreza:setAlign("client");
    obj.tabelaAtributosDestreza:setMaxWidth(1500);
    obj.tabelaAtributosDestreza:setAutoHeight(true);
    obj.tabelaAtributosDestreza:setMinWidth(936);
    obj.tabelaAtributosDestreza:setMinScaledWidth(234);
    obj.tabelaAtributosDestreza:setHorzAlign("center");
    obj.tabelaAtributosDestreza:setMaxControlsPerLine(9);
    obj.tabelaAtributosDestreza:setName("tabelaAtributosDestreza");

    obj.flowLayout71 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout71:setParent(obj.tabelaAtributosDestreza);
    obj.flowLayout71:setName("flowLayout71");
    obj.flowLayout71:setWidth(100);
    obj.flowLayout71:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit17 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit17:setParent(obj.flowLayout71);
    obj.edit17:setText("");
    lfm_setPropAsString(obj.edit17, "fontStyle",  "bold");
    obj.edit17:setName("edit17");
    obj.edit17:setReadOnly(true);
    obj.edit17:setCanFocus(false);
    obj.edit17:setHorzTextAlign("center");
    obj.edit17:setAlign("client");

    obj.flowLayout72 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout72:setParent(obj.tabelaAtributosDestreza);
    obj.flowLayout72:setName("flowLayout72");
    obj.flowLayout72:setWidth(100);
    obj.flowLayout72:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit18 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit18:setParent(obj.flowLayout72);
    obj.edit18:setText("Destreza");
    lfm_setPropAsString(obj.edit18, "fontStyle",  "bold");
    obj.edit18:setName("edit18");
    obj.edit18:setReadOnly(true);
    obj.edit18:setCanFocus(false);
    obj.edit18:setHorzTextAlign("center");
    obj.edit18:setAlign("client");

    obj.flowLayout73 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout73:setParent(obj.tabelaAtributosDestreza);
    obj.flowLayout73:setName("flowLayout73");
    obj.flowLayout73:setWidth(100);
    obj.flowLayout73:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit19 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit19:setParent(obj.flowLayout73);
    obj.edit19:setText("Classe");
    lfm_setPropAsString(obj.edit19, "fontStyle",  "bold");
    obj.edit19:setName("edit19");
    obj.edit19:setReadOnly(true);
    obj.edit19:setCanFocus(false);
    obj.edit19:setHorzTextAlign("center");
    obj.edit19:setAlign("client");

    obj.flowLayout74 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout74:setParent(obj.tabelaAtributosDestreza);
    obj.flowLayout74:setName("flowLayout74");
    obj.flowLayout74:setWidth(100);
    obj.flowLayout74:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit20 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit20:setParent(obj.flowLayout74);
    obj.edit20:setText("Base");
    lfm_setPropAsString(obj.edit20, "fontStyle",  "bold");
    obj.edit20:setName("edit20");
    obj.edit20:setReadOnly(true);
    obj.edit20:setCanFocus(false);
    obj.edit20:setHorzTextAlign("center");
    obj.edit20:setAlign("client");

    obj.flowLayout75 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout75:setParent(obj.tabelaAtributosDestreza);
    obj.flowLayout75:setName("flowLayout75");
    obj.flowLayout75:setWidth(100);
    obj.flowLayout75:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit21 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit21:setParent(obj.flowLayout75);
    obj.edit21:setText("Multiplicador");
    lfm_setPropAsString(obj.edit21, "fontStyle",  "bold");
    obj.edit21:setName("edit21");
    obj.edit21:setReadOnly(true);
    obj.edit21:setCanFocus(false);
    obj.edit21:setHorzTextAlign("center");
    obj.edit21:setAlign("client");

    obj.flowLayout76 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout76:setParent(obj.tabelaAtributosDestreza);
    obj.flowLayout76:setName("flowLayout76");
    obj.flowLayout76:setWidth(100);
    obj.flowLayout76:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit22 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit22:setParent(obj.flowLayout76);
    obj.edit22:setText("Arma");
    lfm_setPropAsString(obj.edit22, "fontStyle",  "bold");
    obj.edit22:setName("edit22");
    obj.edit22:setReadOnly(true);
    obj.edit22:setCanFocus(false);
    obj.edit22:setHorzTextAlign("center");
    obj.edit22:setAlign("client");

    obj.flowLayout77 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout77:setParent(obj.tabelaAtributosDestreza);
    obj.flowLayout77:setName("flowLayout77");
    obj.flowLayout77:setWidth(100);
    obj.flowLayout77:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit23 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit23:setParent(obj.flowLayout77);
    obj.edit23:setText("Armadura");
    lfm_setPropAsString(obj.edit23, "fontStyle",  "bold");
    obj.edit23:setName("edit23");
    obj.edit23:setReadOnly(true);
    obj.edit23:setCanFocus(false);
    obj.edit23:setHorzTextAlign("center");
    obj.edit23:setAlign("client");

    obj.flowLayout78 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout78:setParent(obj.tabelaAtributosDestreza);
    obj.flowLayout78:setName("flowLayout78");
    obj.flowLayout78:setWidth(100);
    obj.flowLayout78:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit24 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit24:setParent(obj.flowLayout78);
    obj.edit24:setText("Extra");
    lfm_setPropAsString(obj.edit24, "fontStyle",  "bold");
    obj.edit24:setName("edit24");
    obj.edit24:setReadOnly(true);
    obj.edit24:setCanFocus(false);
    obj.edit24:setHorzTextAlign("center");
    obj.edit24:setAlign("client");

    obj.flowLayout79 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout79:setParent(obj.tabelaAtributosDestreza);
    obj.flowLayout79:setName("flowLayout79");
    obj.flowLayout79:setWidth(100);
    obj.flowLayout79:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit25 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit25:setParent(obj.flowLayout79);
    obj.edit25:setText("Total");
    lfm_setPropAsString(obj.edit25, "fontStyle",  "bold");
    obj.edit25:setName("edit25");
    obj.edit25:setReadOnly(true);
    obj.edit25:setCanFocus(false);
    obj.edit25:setHorzTextAlign("center");
    obj.edit25:setAlign("client");

    obj.flowLayout80 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout80:setParent(obj.tabelaAtributosDestreza);
    obj.flowLayout80:setName("flowLayout80");
    obj.flowLayout80:setWidth(100);
    obj.flowLayout80:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit26 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit26:setParent(obj.flowLayout80);
    obj.edit26:setText("Acerto");
    lfm_setPropAsString(obj.edit26, "fontStyle",  "bold");
    obj.edit26:setName("edit26");
    obj.edit26:setReadOnly(true);
    obj.edit26:setCanFocus(false);
    obj.edit26:setHorzTextAlign("center");
    obj.edit26:setAlign("client");

    obj.flowLayout81 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout81:setParent(obj.tabelaAtributosDestreza);
    obj.flowLayout81:setName("flowLayout81");
    obj.flowLayout81:setWidth(100);
    obj.flowLayout81:setMargins({top=2,bottom=2,left=2,right=2});

    obj.destrezaAcerto = GUI.fromHandle(_obj_newObject("edit"));
    obj.destrezaAcerto:setParent(obj.flowLayout81);
    obj.destrezaAcerto:setName("destrezaAcerto");
    obj.destrezaAcerto:setType("number");
    obj.destrezaAcerto:setField("destrezaAcerto");
    obj.destrezaAcerto:setMin(0);
    obj.destrezaAcerto:setFontColor("white");
    obj.destrezaAcerto:setReadOnly(false);
    obj.destrezaAcerto:setCanFocus(true);
    obj.destrezaAcerto:setHorzTextAlign("center");
    obj.destrezaAcerto:setAlign("client");

    obj.flowLayout82 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout82:setParent(obj.tabelaAtributosDestreza);
    obj.flowLayout82:setName("flowLayout82");
    obj.flowLayout82:setWidth(100);
    obj.flowLayout82:setMargins({top=2,bottom=2,left=2,right=2});

    obj.classeAcerto = GUI.fromHandle(_obj_newObject("edit"));
    obj.classeAcerto:setParent(obj.flowLayout82);
    obj.classeAcerto:setName("classeAcerto");
    obj.classeAcerto:setType("number");
    obj.classeAcerto:setField("classeAcerto");
    obj.classeAcerto:setMin(0);
    obj.classeAcerto:setFontColor("white");
    obj.classeAcerto:setReadOnly(false);
    obj.classeAcerto:setCanFocus(true);
    obj.classeAcerto:setHorzTextAlign("center");
    obj.classeAcerto:setAlign("client");

    obj.flowLayout83 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout83:setParent(obj.tabelaAtributosDestreza);
    obj.flowLayout83:setName("flowLayout83");
    obj.flowLayout83:setWidth(100);
    obj.flowLayout83:setMargins({top=2,bottom=2,left=2,right=2});

    obj.baseAcerto = GUI.fromHandle(_obj_newObject("edit"));
    obj.baseAcerto:setParent(obj.flowLayout83);
    obj.baseAcerto:setName("baseAcerto");
    obj.baseAcerto:setType("number");
    obj.baseAcerto:setField("baseAcerto");
    obj.baseAcerto:setMin(0);
    obj.baseAcerto:setFontColor("lime");
    obj.baseAcerto:setReadOnly(true);
    obj.baseAcerto:setCanFocus(false);
    obj.baseAcerto:setHorzTextAlign("center");
    obj.baseAcerto:setAlign("client");

    obj.flowLayout84 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout84:setParent(obj.tabelaAtributosDestreza);
    obj.flowLayout84:setName("flowLayout84");
    obj.flowLayout84:setWidth(100);
    obj.flowLayout84:setMargins({top=2,bottom=2,left=2,right=2});

    obj.multiplicadorAcerto = GUI.fromHandle(_obj_newObject("edit"));
    obj.multiplicadorAcerto:setParent(obj.flowLayout84);
    obj.multiplicadorAcerto:setName("multiplicadorAcerto");
    obj.multiplicadorAcerto:setType("number");
    obj.multiplicadorAcerto:setField("multiplicadorAcerto");
    obj.multiplicadorAcerto:setMin(0);
    obj.multiplicadorAcerto:setFontColor("white");
    obj.multiplicadorAcerto:setReadOnly(false);
    obj.multiplicadorAcerto:setCanFocus(true);
    obj.multiplicadorAcerto:setHorzTextAlign("center");
    obj.multiplicadorAcerto:setAlign("client");

    obj.flowLayout85 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout85:setParent(obj.tabelaAtributosDestreza);
    obj.flowLayout85:setName("flowLayout85");
    obj.flowLayout85:setWidth(100);
    obj.flowLayout85:setMargins({top=2,bottom=2,left=2,right=2});

    obj.armaAcerto = GUI.fromHandle(_obj_newObject("edit"));
    obj.armaAcerto:setParent(obj.flowLayout85);
    obj.armaAcerto:setName("armaAcerto");
    obj.armaAcerto:setType("number");
    obj.armaAcerto:setField("armaAcerto");
    obj.armaAcerto:setMin(0);
    obj.armaAcerto:setFontColor("white");
    obj.armaAcerto:setReadOnly(false);
    obj.armaAcerto:setCanFocus(true);
    obj.armaAcerto:setHorzTextAlign("center");
    obj.armaAcerto:setAlign("client");

    obj.flowLayout86 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout86:setParent(obj.tabelaAtributosDestreza);
    obj.flowLayout86:setName("flowLayout86");
    obj.flowLayout86:setWidth(100);
    obj.flowLayout86:setMargins({top=2,bottom=2,left=2,right=2});

    obj.armaduraAcerto = GUI.fromHandle(_obj_newObject("edit"));
    obj.armaduraAcerto:setParent(obj.flowLayout86);
    obj.armaduraAcerto:setName("armaduraAcerto");
    obj.armaduraAcerto:setType("number");
    obj.armaduraAcerto:setField("armaduraAcerto");
    obj.armaduraAcerto:setMin(0);
    obj.armaduraAcerto:setFontColor("white");
    obj.armaduraAcerto:setReadOnly(false);
    obj.armaduraAcerto:setCanFocus(true);
    obj.armaduraAcerto:setHorzTextAlign("center");
    obj.armaduraAcerto:setAlign("client");

    obj.flowLayout87 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout87:setParent(obj.tabelaAtributosDestreza);
    obj.flowLayout87:setName("flowLayout87");
    obj.flowLayout87:setWidth(100);
    obj.flowLayout87:setMargins({top=2,bottom=2,left=2,right=2});

    obj.extraAcerto = GUI.fromHandle(_obj_newObject("edit"));
    obj.extraAcerto:setParent(obj.flowLayout87);
    obj.extraAcerto:setName("extraAcerto");
    obj.extraAcerto:setType("number");
    obj.extraAcerto:setField("extraAcerto");
    obj.extraAcerto:setMin(0);
    obj.extraAcerto:setFontColor("white");
    obj.extraAcerto:setReadOnly(false);
    obj.extraAcerto:setCanFocus(true);
    obj.extraAcerto:setHorzTextAlign("center");
    obj.extraAcerto:setAlign("client");

    obj.flowLayout88 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout88:setParent(obj.tabelaAtributosDestreza);
    obj.flowLayout88:setName("flowLayout88");
    obj.flowLayout88:setWidth(100);
    obj.flowLayout88:setMargins({top=2,bottom=2,left=2,right=2});

    obj.totalAcerto = GUI.fromHandle(_obj_newObject("edit"));
    obj.totalAcerto:setParent(obj.flowLayout88);
    obj.totalAcerto:setName("totalAcerto");
    obj.totalAcerto:setType("number");
    obj.totalAcerto:setField("totalAcerto");
    obj.totalAcerto:setMin(0);
    obj.totalAcerto:setFontColor("lime");
    obj.totalAcerto:setReadOnly(true);
    obj.totalAcerto:setCanFocus(false);
    obj.totalAcerto:setHorzTextAlign("center");
    obj.totalAcerto:setAlign("client");

    obj.dataLink7 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink7:setParent(obj.tabelaAtributosDestreza);
    obj.dataLink7:setFields({'destrezaAcerto', 'classeAcerto', 'baseAcerto', 'multiplicadorAcerto', 'armaAcerto',
                           'armaduraAcerto', 'extraAcerto', 'totalAcerto'});
    obj.dataLink7:setName("dataLink7");

    obj.flowLayout89 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout89:setParent(obj.tabelaAtributosDestreza);
    obj.flowLayout89:setName("flowLayout89");
    obj.flowLayout89:setWidth(100);
    obj.flowLayout89:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit27 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit27:setParent(obj.flowLayout89);
    obj.edit27:setText("Mira");
    lfm_setPropAsString(obj.edit27, "fontStyle",  "bold");
    obj.edit27:setName("edit27");
    obj.edit27:setReadOnly(true);
    obj.edit27:setCanFocus(false);
    obj.edit27:setHorzTextAlign("center");
    obj.edit27:setAlign("client");

    obj.flowLayout90 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout90:setParent(obj.tabelaAtributosDestreza);
    obj.flowLayout90:setName("flowLayout90");
    obj.flowLayout90:setWidth(100);
    obj.flowLayout90:setMargins({top=2,bottom=2,left=2,right=2});

    obj.destrezaMira = GUI.fromHandle(_obj_newObject("edit"));
    obj.destrezaMira:setParent(obj.flowLayout90);
    obj.destrezaMira:setName("destrezaMira");
    obj.destrezaMira:setType("number");
    obj.destrezaMira:setField("destrezaMira");
    obj.destrezaMira:setMin(0);
    obj.destrezaMira:setFontColor("white");
    obj.destrezaMira:setReadOnly(false);
    obj.destrezaMira:setCanFocus(true);
    obj.destrezaMira:setHorzTextAlign("center");
    obj.destrezaMira:setAlign("client");

    obj.flowLayout91 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout91:setParent(obj.tabelaAtributosDestreza);
    obj.flowLayout91:setName("flowLayout91");
    obj.flowLayout91:setWidth(100);
    obj.flowLayout91:setMargins({top=2,bottom=2,left=2,right=2});

    obj.classeMira = GUI.fromHandle(_obj_newObject("edit"));
    obj.classeMira:setParent(obj.flowLayout91);
    obj.classeMira:setName("classeMira");
    obj.classeMira:setType("number");
    obj.classeMira:setField("classeMira");
    obj.classeMira:setMin(0);
    obj.classeMira:setFontColor("white");
    obj.classeMira:setReadOnly(false);
    obj.classeMira:setCanFocus(true);
    obj.classeMira:setHorzTextAlign("center");
    obj.classeMira:setAlign("client");

    obj.flowLayout92 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout92:setParent(obj.tabelaAtributosDestreza);
    obj.flowLayout92:setName("flowLayout92");
    obj.flowLayout92:setWidth(100);
    obj.flowLayout92:setMargins({top=2,bottom=2,left=2,right=2});

    obj.baseMira = GUI.fromHandle(_obj_newObject("edit"));
    obj.baseMira:setParent(obj.flowLayout92);
    obj.baseMira:setName("baseMira");
    obj.baseMira:setType("number");
    obj.baseMira:setField("baseMira");
    obj.baseMira:setMin(0);
    obj.baseMira:setFontColor("lime");
    obj.baseMira:setReadOnly(true);
    obj.baseMira:setCanFocus(false);
    obj.baseMira:setHorzTextAlign("center");
    obj.baseMira:setAlign("client");

    obj.flowLayout93 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout93:setParent(obj.tabelaAtributosDestreza);
    obj.flowLayout93:setName("flowLayout93");
    obj.flowLayout93:setWidth(100);
    obj.flowLayout93:setMargins({top=2,bottom=2,left=2,right=2});

    obj.multiplicadorMira = GUI.fromHandle(_obj_newObject("edit"));
    obj.multiplicadorMira:setParent(obj.flowLayout93);
    obj.multiplicadorMira:setName("multiplicadorMira");
    obj.multiplicadorMira:setType("number");
    obj.multiplicadorMira:setField("multiplicadorMira");
    obj.multiplicadorMira:setMin(0);
    obj.multiplicadorMira:setFontColor("white");
    obj.multiplicadorMira:setReadOnly(false);
    obj.multiplicadorMira:setCanFocus(true);
    obj.multiplicadorMira:setHorzTextAlign("center");
    obj.multiplicadorMira:setAlign("client");

    obj.flowLayout94 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout94:setParent(obj.tabelaAtributosDestreza);
    obj.flowLayout94:setName("flowLayout94");
    obj.flowLayout94:setWidth(100);
    obj.flowLayout94:setMargins({top=2,bottom=2,left=2,right=2});

    obj.armaMira = GUI.fromHandle(_obj_newObject("edit"));
    obj.armaMira:setParent(obj.flowLayout94);
    obj.armaMira:setName("armaMira");
    obj.armaMira:setType("number");
    obj.armaMira:setField("armaMira");
    obj.armaMira:setMin(0);
    obj.armaMira:setFontColor("white");
    obj.armaMira:setReadOnly(false);
    obj.armaMira:setCanFocus(true);
    obj.armaMira:setHorzTextAlign("center");
    obj.armaMira:setAlign("client");

    obj.flowLayout95 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout95:setParent(obj.tabelaAtributosDestreza);
    obj.flowLayout95:setName("flowLayout95");
    obj.flowLayout95:setWidth(100);
    obj.flowLayout95:setMargins({top=2,bottom=2,left=2,right=2});

    obj.armaduraMira = GUI.fromHandle(_obj_newObject("edit"));
    obj.armaduraMira:setParent(obj.flowLayout95);
    obj.armaduraMira:setName("armaduraMira");
    obj.armaduraMira:setType("number");
    obj.armaduraMira:setField("armaduraMira");
    obj.armaduraMira:setMin(0);
    obj.armaduraMira:setFontColor("white");
    obj.armaduraMira:setReadOnly(false);
    obj.armaduraMira:setCanFocus(true);
    obj.armaduraMira:setHorzTextAlign("center");
    obj.armaduraMira:setAlign("client");

    obj.flowLayout96 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout96:setParent(obj.tabelaAtributosDestreza);
    obj.flowLayout96:setName("flowLayout96");
    obj.flowLayout96:setWidth(100);
    obj.flowLayout96:setMargins({top=2,bottom=2,left=2,right=2});

    obj.extraMira = GUI.fromHandle(_obj_newObject("edit"));
    obj.extraMira:setParent(obj.flowLayout96);
    obj.extraMira:setName("extraMira");
    obj.extraMira:setType("number");
    obj.extraMira:setField("extraMira");
    obj.extraMira:setMin(0);
    obj.extraMira:setFontColor("white");
    obj.extraMira:setReadOnly(false);
    obj.extraMira:setCanFocus(true);
    obj.extraMira:setHorzTextAlign("center");
    obj.extraMira:setAlign("client");

    obj.flowLayout97 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout97:setParent(obj.tabelaAtributosDestreza);
    obj.flowLayout97:setName("flowLayout97");
    obj.flowLayout97:setWidth(100);
    obj.flowLayout97:setMargins({top=2,bottom=2,left=2,right=2});

    obj.totalMira = GUI.fromHandle(_obj_newObject("edit"));
    obj.totalMira:setParent(obj.flowLayout97);
    obj.totalMira:setName("totalMira");
    obj.totalMira:setType("number");
    obj.totalMira:setField("totalMira");
    obj.totalMira:setMin(0);
    obj.totalMira:setFontColor("lime");
    obj.totalMira:setReadOnly(true);
    obj.totalMira:setCanFocus(false);
    obj.totalMira:setHorzTextAlign("center");
    obj.totalMira:setAlign("client");

    obj.dataLink8 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink8:setParent(obj.tabelaAtributosDestreza);
    obj.dataLink8:setFields({'destrezaMira', 'classeMira', 'baseMira', 'multiplicadorMira', 'armaMira',
                           'armaduraMira', 'extraMira', 'totalMira'});
    obj.dataLink8:setName("dataLink8");

    obj.flowLayout98 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout98:setParent(obj.tabelaAtributosDestreza);
    obj.flowLayout98:setName("flowLayout98");
    obj.flowLayout98:setWidth(100);
    obj.flowLayout98:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit28 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit28:setParent(obj.flowLayout98);
    obj.edit28:setText("Bloqueio");
    lfm_setPropAsString(obj.edit28, "fontStyle",  "bold");
    obj.edit28:setName("edit28");
    obj.edit28:setReadOnly(true);
    obj.edit28:setCanFocus(false);
    obj.edit28:setHorzTextAlign("center");
    obj.edit28:setAlign("client");

    obj.flowLayout99 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout99:setParent(obj.tabelaAtributosDestreza);
    obj.flowLayout99:setName("flowLayout99");
    obj.flowLayout99:setWidth(100);
    obj.flowLayout99:setMargins({top=2,bottom=2,left=2,right=2});

    obj.destrezaBloqueio = GUI.fromHandle(_obj_newObject("edit"));
    obj.destrezaBloqueio:setParent(obj.flowLayout99);
    obj.destrezaBloqueio:setName("destrezaBloqueio");
    obj.destrezaBloqueio:setType("number");
    obj.destrezaBloqueio:setField("destrezaBloqueio");
    obj.destrezaBloqueio:setMin(0);
    obj.destrezaBloqueio:setFontColor("white");
    obj.destrezaBloqueio:setReadOnly(false);
    obj.destrezaBloqueio:setCanFocus(true);
    obj.destrezaBloqueio:setHorzTextAlign("center");
    obj.destrezaBloqueio:setAlign("client");

    obj.flowLayout100 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout100:setParent(obj.tabelaAtributosDestreza);
    obj.flowLayout100:setName("flowLayout100");
    obj.flowLayout100:setWidth(100);
    obj.flowLayout100:setMargins({top=2,bottom=2,left=2,right=2});

    obj.classeBloqueio = GUI.fromHandle(_obj_newObject("edit"));
    obj.classeBloqueio:setParent(obj.flowLayout100);
    obj.classeBloqueio:setName("classeBloqueio");
    obj.classeBloqueio:setType("number");
    obj.classeBloqueio:setField("classeBloqueio");
    obj.classeBloqueio:setMin(0);
    obj.classeBloqueio:setFontColor("white");
    obj.classeBloqueio:setReadOnly(false);
    obj.classeBloqueio:setCanFocus(true);
    obj.classeBloqueio:setHorzTextAlign("center");
    obj.classeBloqueio:setAlign("client");

    obj.flowLayout101 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout101:setParent(obj.tabelaAtributosDestreza);
    obj.flowLayout101:setName("flowLayout101");
    obj.flowLayout101:setWidth(100);
    obj.flowLayout101:setMargins({top=2,bottom=2,left=2,right=2});

    obj.baseBloqueio = GUI.fromHandle(_obj_newObject("edit"));
    obj.baseBloqueio:setParent(obj.flowLayout101);
    obj.baseBloqueio:setName("baseBloqueio");
    obj.baseBloqueio:setType("number");
    obj.baseBloqueio:setField("baseBloqueio");
    obj.baseBloqueio:setMin(0);
    obj.baseBloqueio:setFontColor("lime");
    obj.baseBloqueio:setReadOnly(true);
    obj.baseBloqueio:setCanFocus(false);
    obj.baseBloqueio:setHorzTextAlign("center");
    obj.baseBloqueio:setAlign("client");

    obj.flowLayout102 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout102:setParent(obj.tabelaAtributosDestreza);
    obj.flowLayout102:setName("flowLayout102");
    obj.flowLayout102:setWidth(100);
    obj.flowLayout102:setMargins({top=2,bottom=2,left=2,right=2});

    obj.multiplicadorBloqueio = GUI.fromHandle(_obj_newObject("edit"));
    obj.multiplicadorBloqueio:setParent(obj.flowLayout102);
    obj.multiplicadorBloqueio:setName("multiplicadorBloqueio");
    obj.multiplicadorBloqueio:setType("number");
    obj.multiplicadorBloqueio:setField("multiplicadorBloqueio");
    obj.multiplicadorBloqueio:setMin(0);
    obj.multiplicadorBloqueio:setFontColor("white");
    obj.multiplicadorBloqueio:setReadOnly(false);
    obj.multiplicadorBloqueio:setCanFocus(true);
    obj.multiplicadorBloqueio:setHorzTextAlign("center");
    obj.multiplicadorBloqueio:setAlign("client");

    obj.flowLayout103 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout103:setParent(obj.tabelaAtributosDestreza);
    obj.flowLayout103:setName("flowLayout103");
    obj.flowLayout103:setWidth(100);
    obj.flowLayout103:setMargins({top=2,bottom=2,left=2,right=2});

    obj.armaBloqueio = GUI.fromHandle(_obj_newObject("edit"));
    obj.armaBloqueio:setParent(obj.flowLayout103);
    obj.armaBloqueio:setName("armaBloqueio");
    obj.armaBloqueio:setType("number");
    obj.armaBloqueio:setField("armaBloqueio");
    obj.armaBloqueio:setMin(0);
    obj.armaBloqueio:setFontColor("white");
    obj.armaBloqueio:setReadOnly(false);
    obj.armaBloqueio:setCanFocus(true);
    obj.armaBloqueio:setHorzTextAlign("center");
    obj.armaBloqueio:setAlign("client");

    obj.flowLayout104 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout104:setParent(obj.tabelaAtributosDestreza);
    obj.flowLayout104:setName("flowLayout104");
    obj.flowLayout104:setWidth(100);
    obj.flowLayout104:setMargins({top=2,bottom=2,left=2,right=2});

    obj.armaduraBloqueio = GUI.fromHandle(_obj_newObject("edit"));
    obj.armaduraBloqueio:setParent(obj.flowLayout104);
    obj.armaduraBloqueio:setName("armaduraBloqueio");
    obj.armaduraBloqueio:setType("number");
    obj.armaduraBloqueio:setField("armaduraBloqueio");
    obj.armaduraBloqueio:setMin(0);
    obj.armaduraBloqueio:setFontColor("white");
    obj.armaduraBloqueio:setReadOnly(false);
    obj.armaduraBloqueio:setCanFocus(true);
    obj.armaduraBloqueio:setHorzTextAlign("center");
    obj.armaduraBloqueio:setAlign("client");

    obj.flowLayout105 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout105:setParent(obj.tabelaAtributosDestreza);
    obj.flowLayout105:setName("flowLayout105");
    obj.flowLayout105:setWidth(100);
    obj.flowLayout105:setMargins({top=2,bottom=2,left=2,right=2});

    obj.extraBloqueio = GUI.fromHandle(_obj_newObject("edit"));
    obj.extraBloqueio:setParent(obj.flowLayout105);
    obj.extraBloqueio:setName("extraBloqueio");
    obj.extraBloqueio:setType("number");
    obj.extraBloqueio:setField("extraBloqueio");
    obj.extraBloqueio:setMin(0);
    obj.extraBloqueio:setFontColor("white");
    obj.extraBloqueio:setReadOnly(false);
    obj.extraBloqueio:setCanFocus(true);
    obj.extraBloqueio:setHorzTextAlign("center");
    obj.extraBloqueio:setAlign("client");

    obj.flowLayout106 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout106:setParent(obj.tabelaAtributosDestreza);
    obj.flowLayout106:setName("flowLayout106");
    obj.flowLayout106:setWidth(100);
    obj.flowLayout106:setMargins({top=2,bottom=2,left=2,right=2});

    obj.totalBloqueio = GUI.fromHandle(_obj_newObject("edit"));
    obj.totalBloqueio:setParent(obj.flowLayout106);
    obj.totalBloqueio:setName("totalBloqueio");
    obj.totalBloqueio:setType("number");
    obj.totalBloqueio:setField("totalBloqueio");
    obj.totalBloqueio:setMin(0);
    obj.totalBloqueio:setFontColor("lime");
    obj.totalBloqueio:setReadOnly(true);
    obj.totalBloqueio:setCanFocus(false);
    obj.totalBloqueio:setHorzTextAlign("center");
    obj.totalBloqueio:setAlign("client");

    obj.dataLink9 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink9:setParent(obj.tabelaAtributosDestreza);
    obj.dataLink9:setFields({'destrezaBloqueio', 'classeBloqueio', 'baseBloqueio', 'multiplicadorBloqueio', 'armaBloqueio',
                           'armaduraBloqueio', 'extraBloqueio', 'totalBloqueio'});
    obj.dataLink9:setName("dataLink9");

    obj.flowLayout107 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout107:setParent(obj.tabelaAtributosDestreza);
    obj.flowLayout107:setName("flowLayout107");
    obj.flowLayout107:setWidth(100);
    obj.flowLayout107:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit29 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit29:setParent(obj.flowLayout107);
    obj.edit29:setText("Esquiva");
    lfm_setPropAsString(obj.edit29, "fontStyle",  "bold");
    obj.edit29:setName("edit29");
    obj.edit29:setReadOnly(true);
    obj.edit29:setCanFocus(false);
    obj.edit29:setHorzTextAlign("center");
    obj.edit29:setAlign("client");

    obj.flowLayout108 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout108:setParent(obj.tabelaAtributosDestreza);
    obj.flowLayout108:setName("flowLayout108");
    obj.flowLayout108:setWidth(100);
    obj.flowLayout108:setMargins({top=2,bottom=2,left=2,right=2});

    obj.destrezaEsquiva = GUI.fromHandle(_obj_newObject("edit"));
    obj.destrezaEsquiva:setParent(obj.flowLayout108);
    obj.destrezaEsquiva:setName("destrezaEsquiva");
    obj.destrezaEsquiva:setType("number");
    obj.destrezaEsquiva:setField("destrezaEsquiva");
    obj.destrezaEsquiva:setMin(0);
    obj.destrezaEsquiva:setFontColor("white");
    obj.destrezaEsquiva:setReadOnly(false);
    obj.destrezaEsquiva:setCanFocus(true);
    obj.destrezaEsquiva:setHorzTextAlign("center");
    obj.destrezaEsquiva:setAlign("client");

    obj.flowLayout109 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout109:setParent(obj.tabelaAtributosDestreza);
    obj.flowLayout109:setName("flowLayout109");
    obj.flowLayout109:setWidth(100);
    obj.flowLayout109:setMargins({top=2,bottom=2,left=2,right=2});

    obj.classeEsquiva = GUI.fromHandle(_obj_newObject("edit"));
    obj.classeEsquiva:setParent(obj.flowLayout109);
    obj.classeEsquiva:setName("classeEsquiva");
    obj.classeEsquiva:setType("number");
    obj.classeEsquiva:setField("classeEsquiva");
    obj.classeEsquiva:setMin(0);
    obj.classeEsquiva:setFontColor("white");
    obj.classeEsquiva:setReadOnly(false);
    obj.classeEsquiva:setCanFocus(true);
    obj.classeEsquiva:setHorzTextAlign("center");
    obj.classeEsquiva:setAlign("client");

    obj.flowLayout110 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout110:setParent(obj.tabelaAtributosDestreza);
    obj.flowLayout110:setName("flowLayout110");
    obj.flowLayout110:setWidth(100);
    obj.flowLayout110:setMargins({top=2,bottom=2,left=2,right=2});

    obj.baseEsquiva = GUI.fromHandle(_obj_newObject("edit"));
    obj.baseEsquiva:setParent(obj.flowLayout110);
    obj.baseEsquiva:setName("baseEsquiva");
    obj.baseEsquiva:setType("number");
    obj.baseEsquiva:setField("baseEsquiva");
    obj.baseEsquiva:setMin(0);
    obj.baseEsquiva:setFontColor("lime");
    obj.baseEsquiva:setReadOnly(true);
    obj.baseEsquiva:setCanFocus(false);
    obj.baseEsquiva:setHorzTextAlign("center");
    obj.baseEsquiva:setAlign("client");

    obj.flowLayout111 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout111:setParent(obj.tabelaAtributosDestreza);
    obj.flowLayout111:setName("flowLayout111");
    obj.flowLayout111:setWidth(100);
    obj.flowLayout111:setMargins({top=2,bottom=2,left=2,right=2});

    obj.multiplicadorEsquiva = GUI.fromHandle(_obj_newObject("edit"));
    obj.multiplicadorEsquiva:setParent(obj.flowLayout111);
    obj.multiplicadorEsquiva:setName("multiplicadorEsquiva");
    obj.multiplicadorEsquiva:setType("number");
    obj.multiplicadorEsquiva:setField("multiplicadorEsquiva");
    obj.multiplicadorEsquiva:setMin(0);
    obj.multiplicadorEsquiva:setFontColor("white");
    obj.multiplicadorEsquiva:setReadOnly(false);
    obj.multiplicadorEsquiva:setCanFocus(true);
    obj.multiplicadorEsquiva:setHorzTextAlign("center");
    obj.multiplicadorEsquiva:setAlign("client");

    obj.flowLayout112 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout112:setParent(obj.tabelaAtributosDestreza);
    obj.flowLayout112:setName("flowLayout112");
    obj.flowLayout112:setWidth(100);
    obj.flowLayout112:setMargins({top=2,bottom=2,left=2,right=2});

    obj.armaEsquiva = GUI.fromHandle(_obj_newObject("edit"));
    obj.armaEsquiva:setParent(obj.flowLayout112);
    obj.armaEsquiva:setName("armaEsquiva");
    obj.armaEsquiva:setType("number");
    obj.armaEsquiva:setField("armaEsquiva");
    obj.armaEsquiva:setMin(0);
    obj.armaEsquiva:setFontColor("white");
    obj.armaEsquiva:setReadOnly(false);
    obj.armaEsquiva:setCanFocus(true);
    obj.armaEsquiva:setHorzTextAlign("center");
    obj.armaEsquiva:setAlign("client");

    obj.flowLayout113 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout113:setParent(obj.tabelaAtributosDestreza);
    obj.flowLayout113:setName("flowLayout113");
    obj.flowLayout113:setWidth(100);
    obj.flowLayout113:setMargins({top=2,bottom=2,left=2,right=2});

    obj.armaduraEsquiva = GUI.fromHandle(_obj_newObject("edit"));
    obj.armaduraEsquiva:setParent(obj.flowLayout113);
    obj.armaduraEsquiva:setName("armaduraEsquiva");
    obj.armaduraEsquiva:setType("number");
    obj.armaduraEsquiva:setField("armaduraEsquiva");
    obj.armaduraEsquiva:setMin(0);
    obj.armaduraEsquiva:setFontColor("white");
    obj.armaduraEsquiva:setReadOnly(false);
    obj.armaduraEsquiva:setCanFocus(true);
    obj.armaduraEsquiva:setHorzTextAlign("center");
    obj.armaduraEsquiva:setAlign("client");

    obj.flowLayout114 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout114:setParent(obj.tabelaAtributosDestreza);
    obj.flowLayout114:setName("flowLayout114");
    obj.flowLayout114:setWidth(100);
    obj.flowLayout114:setMargins({top=2,bottom=2,left=2,right=2});

    obj.extraEsquiva = GUI.fromHandle(_obj_newObject("edit"));
    obj.extraEsquiva:setParent(obj.flowLayout114);
    obj.extraEsquiva:setName("extraEsquiva");
    obj.extraEsquiva:setType("number");
    obj.extraEsquiva:setField("extraEsquiva");
    obj.extraEsquiva:setMin(0);
    obj.extraEsquiva:setFontColor("white");
    obj.extraEsquiva:setReadOnly(false);
    obj.extraEsquiva:setCanFocus(true);
    obj.extraEsquiva:setHorzTextAlign("center");
    obj.extraEsquiva:setAlign("client");

    obj.flowLayout115 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout115:setParent(obj.tabelaAtributosDestreza);
    obj.flowLayout115:setName("flowLayout115");
    obj.flowLayout115:setWidth(100);
    obj.flowLayout115:setMargins({top=2,bottom=2,left=2,right=2});

    obj.totalEsquiva = GUI.fromHandle(_obj_newObject("edit"));
    obj.totalEsquiva:setParent(obj.flowLayout115);
    obj.totalEsquiva:setName("totalEsquiva");
    obj.totalEsquiva:setType("number");
    obj.totalEsquiva:setField("totalEsquiva");
    obj.totalEsquiva:setMin(0);
    obj.totalEsquiva:setFontColor("lime");
    obj.totalEsquiva:setReadOnly(true);
    obj.totalEsquiva:setCanFocus(false);
    obj.totalEsquiva:setHorzTextAlign("center");
    obj.totalEsquiva:setAlign("client");

    obj.dataLink10 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink10:setParent(obj.tabelaAtributosDestreza);
    obj.dataLink10:setFields({'destrezaEsquiva', 'classeEsquiva', 'baseEsquiva', 'multiplicadorEsquiva', 'armaEsquiva',
                           'armaduraEsquiva', 'extraEsquiva', 'totalEsquiva'});
    obj.dataLink10:setName("dataLink10");

    obj.popupMenuImagem = GUI.fromHandle(_obj_newObject("popup"));
    obj.popupMenuImagem:setParent(obj.tab1);
    obj.popupMenuImagem:setName("popupMenuImagem");
    obj.popupMenuImagem:setHeight(160);
    obj.popupMenuImagem:setWidth(100);
    obj.popupMenuImagem:setBackOpacity(0);
    obj.popupMenuImagem:setDrawContainer(false);

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.popupMenuImagem);
    obj.rectangle1:setAlign("client");
    obj.rectangle1:setColor("black");
    obj.rectangle1:setStrokeColor("white");
    obj.rectangle1:setStrokeSize(1);
    obj.rectangle1:setName("rectangle1");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.rectangle1);
    obj.label1:setAlign("top");
    obj.label1:setHeight(20);
    obj.label1:setText("Cor do Fundo");
    obj.label1:setHorzTextAlign("center");
    obj.label1:setFontSize(12);
    obj.label1:setName("label1");

    obj.comboBox1 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox1:setParent(obj.rectangle1);
    obj.comboBox1:setAlign("top");
    obj.comboBox1:setTop(20);
    obj.comboBox1:setHeight(20);
    obj.comboBox1:setMargins({right=2,left=2});
    obj.comboBox1:setFontSize(12);
    obj.comboBox1:setField("corDoFundo");
    obj.comboBox1:setValue("black");
    obj.comboBox1:setValues({'black','silver','#212121','white','#404040'});
    obj.comboBox1:setItems({'Preto','Cinza Claro','Cinza Escuro','Branco','Transparente'});
    obj.comboBox1:setName("comboBox1");

    obj.rectangle2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.tab1);
    obj.rectangle2:setAlign("client");
    obj.rectangle2:setColor("#40000000");
    obj.rectangle2:setName("rectangle2");

    obj.scrollBox1 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj.rectangle2);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.flowLayout116 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout116:setParent(obj.scrollBox1);
    obj.flowLayout116:setAlign("top");
    obj.flowLayout116:setLineSpacing(10);
    obj.flowLayout116:setMargins({top=10,right=10,left=10});
    obj.flowLayout116:setHorzAlign("center");
    obj.flowLayout116:setAutoHeight(true);
    obj.flowLayout116:setMaxControlsPerLine(1);
    obj.flowLayout116:setName("flowLayout116");

    obj.flowLayout117 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout117:setParent(obj.flowLayout116);
    obj.flowLayout117:setName("flowLayout117");
    obj.flowLayout117:setMaxWidth(1600);
    obj.flowLayout117:setMinWidth(300);
    obj.flowLayout117:setAutoHeight(true);
    obj.flowLayout117:setHorzAlign("center");
    obj.flowLayout117:setMaxControlsPerLine(3);
    obj.flowLayout117:setLineSpacing(10);

    obj.flowPart1 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart1:setParent(obj.flowLayout117);
    obj.flowPart1:setMinWidth(300);
    obj.flowPart1:setMinScaledWidth(100);
    obj.flowPart1:setHeight(300);
    obj.flowPart1:setMargins({right=10,left=10});
    obj.flowPart1:setName("flowPart1");

    obj.fundoDaImagem = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.fundoDaImagem:setParent(obj.flowPart1);
    obj.fundoDaImagem:setAlign("client");
    obj.fundoDaImagem:setColor("black");
    obj.fundoDaImagem:setCornerType("innerLine");
    obj.fundoDaImagem:setXradius(25);
    obj.fundoDaImagem:setYradius(25);
    obj.fundoDaImagem:setName("fundoDaImagem");

    obj.image1 = GUI.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj.flowPart1);
    obj.image1:setMargins({top=10,bottom=10,right=10,left=10});
    obj.image1:setAlign("client");
    lfm_setPropAsString(obj.image1, "animate",  "true");
    obj.image1:setField("imagemDoPersonagem");
    obj.image1:setEditable(true);
    obj.image1:setStyle("autoFit");
    obj.image1:setName("image1");

    obj.flowLayout118 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout118:setParent(obj.flowLayout117);
    obj.flowLayout118:setMinWidth(600);
    obj.flowLayout118:setMinScaledWidth(200);
    obj.flowLayout118:setAutoHeight(true);
    obj.flowLayout118:setMaxControlsPerLine(2);
    obj.flowLayout118:setName("flowLayout118");

    obj.flowPart2 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart2:setParent(obj.flowLayout118);
    obj.flowPart2:setMinWidth(300);
    obj.flowPart2:setMinScaledWidth(100);
    obj.flowPart2:setHeight(36);
    obj.flowPart2:setMargins({right=2,left=2});
    obj.flowPart2:setName("flowPart2");

    obj.edit30 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit30:setParent(obj.flowPart2);
    obj.edit30:setAlign("top");
    obj.edit30:setHeight(22);
    obj.edit30:setTransparent(true);
    obj.edit30:setFontSize(13);
    obj.edit30:setField("nome");
    obj.edit30:setName("edit30");

    obj.horzLine1 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine1:setParent(obj.edit30);
    obj.horzLine1:setAlign("bottom");
    obj.horzLine1:setStrokeColor("white");
    obj.horzLine1:setName("horzLine1");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.flowPart2);
    obj.label2:setText("NOME DO PERSONAGEM");
    obj.label2:setAlign("bottom");
    obj.label2:setFontSize(10);
    obj.label2:setName("label2");

    obj.flowPart3 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart3:setParent(obj.flowLayout118);
    obj.flowPart3:setMinWidth(300);
    obj.flowPart3:setMinScaledWidth(100);
    obj.flowPart3:setHeight(36);
    obj.flowPart3:setMargins({right=2,left=2});
    obj.flowPart3:setName("flowPart3");

    obj.edit31 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit31:setParent(obj.flowPart3);
    obj.edit31:setAlign("top");
    obj.edit31:setHeight(22);
    obj.edit31:setTransparent(true);
    obj.edit31:setFontSize(13);
    obj.edit31:setField("raca");
    obj.edit31:setName("edit31");

    obj.horzLine2 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine2:setParent(obj.edit31);
    obj.horzLine2:setAlign("bottom");
    obj.horzLine2:setStrokeColor("white");
    obj.horzLine2:setName("horzLine2");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.flowPart3);
    obj.label3:setText("RAÇA");
    obj.label3:setAlign("bottom");
    obj.label3:setFontSize(10);
    obj.label3:setName("label3");

    obj.flowPart4 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart4:setParent(obj.flowLayout118);
    obj.flowPart4:setMinWidth(300);
    obj.flowPart4:setMinScaledWidth(100);
    obj.flowPart4:setHeight(36);
    obj.flowPart4:setMargins({right=2,left=2});
    obj.flowPart4:setName("flowPart4");

    obj.edit32 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit32:setParent(obj.flowPart4);
    obj.edit32:setAlign("top");
    obj.edit32:setHeight(22);
    obj.edit32:setTransparent(true);
    obj.edit32:setFontSize(13);
    obj.edit32:setField("peso");
    obj.edit32:setName("edit32");

    obj.horzLine3 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine3:setParent(obj.edit32);
    obj.horzLine3:setAlign("bottom");
    obj.horzLine3:setStrokeColor("white");
    obj.horzLine3:setName("horzLine3");

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.flowPart4);
    obj.label4:setText("PESO");
    obj.label4:setAlign("bottom");
    obj.label4:setFontSize(10);
    obj.label4:setName("label4");

    obj.flowPart5 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart5:setParent(obj.flowLayout118);
    obj.flowPart5:setMinWidth(300);
    obj.flowPart5:setMinScaledWidth(100);
    obj.flowPart5:setHeight(36);
    obj.flowPart5:setMargins({right=2,left=2});
    obj.flowPart5:setName("flowPart5");

    obj.edit33 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit33:setParent(obj.flowPart5);
    obj.edit33:setAlign("top");
    obj.edit33:setHeight(22);
    obj.edit33:setTransparent(true);
    obj.edit33:setFontSize(13);
    obj.edit33:setField("classe");
    obj.edit33:setName("edit33");

    obj.horzLine4 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine4:setParent(obj.edit33);
    obj.horzLine4:setAlign("bottom");
    obj.horzLine4:setStrokeColor("white");
    obj.horzLine4:setName("horzLine4");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.flowPart5);
    obj.label5:setText("CLASSE");
    obj.label5:setAlign("bottom");
    obj.label5:setFontSize(10);
    obj.label5:setName("label5");

    obj.flowPart6 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart6:setParent(obj.flowLayout118);
    obj.flowPart6:setMinWidth(300);
    obj.flowPart6:setMinScaledWidth(100);
    obj.flowPart6:setHeight(36);
    obj.flowPart6:setMargins({right=2,left=2});
    obj.flowPart6:setName("flowPart6");

    obj.edit34 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit34:setParent(obj.flowPart6);
    obj.edit34:setAlign("top");
    obj.edit34:setHeight(22);
    obj.edit34:setTransparent(true);
    obj.edit34:setFontSize(13);
    obj.edit34:setField("altura");
    obj.edit34:setName("edit34");

    obj.horzLine5 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine5:setParent(obj.edit34);
    obj.horzLine5:setAlign("bottom");
    obj.horzLine5:setStrokeColor("white");
    obj.horzLine5:setName("horzLine5");

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.flowPart6);
    obj.label6:setText("ALTURA");
    obj.label6:setAlign("bottom");
    obj.label6:setFontSize(10);
    obj.label6:setName("label6");

    obj.flowPart7 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart7:setParent(obj.flowLayout118);
    obj.flowPart7:setMinWidth(300);
    obj.flowPart7:setMinScaledWidth(100);
    obj.flowPart7:setHeight(36);
    obj.flowPart7:setMargins({right=2,left=2});
    obj.flowPart7:setName("flowPart7");

    obj.edit35 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit35:setParent(obj.flowPart7);
    obj.edit35:setAlign("top");
    obj.edit35:setHeight(22);
    obj.edit35:setTransparent(true);
    obj.edit35:setFontSize(13);
    obj.edit35:setField("idade");
    obj.edit35:setName("edit35");

    obj.horzLine6 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine6:setParent(obj.edit35);
    obj.horzLine6:setAlign("bottom");
    obj.horzLine6:setStrokeColor("white");
    obj.horzLine6:setName("horzLine6");

    obj.label7 = GUI.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.flowPart7);
    obj.label7:setText("IDADE");
    obj.label7:setAlign("bottom");
    obj.label7:setFontSize(10);
    obj.label7:setName("label7");

    obj.flowPart8 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart8:setParent(obj.flowLayout118);
    obj.flowPart8:setMinWidth(300);
    obj.flowPart8:setMinScaledWidth(100);
    obj.flowPart8:setHeight(36);
    obj.flowPart8:setMargins({right=2,left=2});
    obj.flowPart8:setName("flowPart8");

    obj.edit36 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit36:setParent(obj.flowPart8);
    obj.edit36:setAlign("top");
    obj.edit36:setHeight(22);
    obj.edit36:setTransparent(true);
    obj.edit36:setFontSize(13);
    obj.edit36:setField("sexo");
    obj.edit36:setName("edit36");

    obj.horzLine7 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine7:setParent(obj.edit36);
    obj.horzLine7:setAlign("bottom");
    obj.horzLine7:setStrokeColor("white");
    obj.horzLine7:setName("horzLine7");

    obj.label8 = GUI.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.flowPart8);
    obj.label8:setText("SEXO");
    obj.label8:setAlign("bottom");
    obj.label8:setFontSize(10);
    obj.label8:setName("label8");

    obj.flowPart9 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart9:setParent(obj.flowLayout118);
    obj.flowPart9:setMinWidth(300);
    obj.flowPart9:setMinScaledWidth(100);
    obj.flowPart9:setHeight(36);
    obj.flowPart9:setMargins({right=2,left=2});
    obj.flowPart9:setName("flowPart9");

    obj.edit37 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit37:setParent(obj.flowPart9);
    obj.edit37:setAlign("top");
    obj.edit37:setHeight(22);
    obj.edit37:setTransparent(true);
    obj.edit37:setFontSize(13);
    obj.edit37:setField("nacionalidade");
    obj.edit37:setName("edit37");

    obj.horzLine8 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine8:setParent(obj.edit37);
    obj.horzLine8:setAlign("bottom");
    obj.horzLine8:setStrokeColor("white");
    obj.horzLine8:setName("horzLine8");

    obj.label9 = GUI.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.flowPart9);
    obj.label9:setText("NACIONALIDADE");
    obj.label9:setAlign("bottom");
    obj.label9:setFontSize(10);
    obj.label9:setName("label9");

    obj.flowPart10 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart10:setParent(obj.flowLayout118);
    obj.flowPart10:setMinWidth(300);
    obj.flowPart10:setMinScaledWidth(100);
    obj.flowPart10:setHeight(36);
    obj.flowPart10:setMargins({right=2,left=2});
    obj.flowPart10:setName("flowPart10");

    obj.edit38 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit38:setParent(obj.flowPart10);
    obj.edit38:setAlign("top");
    obj.edit38:setHeight(22);
    obj.edit38:setTransparent(true);
    obj.edit38:setFontSize(13);
    obj.edit38:setField("profissao");
    obj.edit38:setName("edit38");

    obj.horzLine9 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine9:setParent(obj.edit38);
    obj.horzLine9:setAlign("bottom");
    obj.horzLine9:setStrokeColor("white");
    obj.horzLine9:setName("horzLine9");

    obj.label10 = GUI.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.flowPart10);
    obj.label10:setText("PROFISSÃO");
    obj.label10:setAlign("bottom");
    obj.label10:setFontSize(10);
    obj.label10:setName("label10");

    obj.flowPart11 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart11:setParent(obj.flowLayout118);
    obj.flowPart11:setMinWidth(300);
    obj.flowPart11:setMinScaledWidth(100);
    obj.flowPart11:setHeight(36);
    obj.flowPart11:setMargins({right=2,left=2});
    obj.flowPart11:setName("flowPart11");

    obj.edit39 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit39:setParent(obj.flowPart11);
    obj.edit39:setAlign("top");
    obj.edit39:setHeight(22);
    obj.edit39:setTransparent(true);
    obj.edit39:setFontSize(13);
    obj.edit39:setField("divindade");
    obj.edit39:setName("edit39");

    obj.horzLine10 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine10:setParent(obj.edit39);
    obj.horzLine10:setAlign("bottom");
    obj.horzLine10:setStrokeColor("white");
    obj.horzLine10:setName("horzLine10");

    obj.label11 = GUI.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.flowPart11);
    obj.label11:setText("DIVINDADE");
    obj.label11:setAlign("bottom");
    obj.label11:setFontSize(10);
    obj.label11:setName("label11");

    obj.flowLayout119 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout119:setParent(obj.flowLayout117);
    obj.flowLayout119:setMinWidth(120);
    obj.flowLayout119:setMinScaledWidth(200);
    obj.flowLayout119:setAutoHeight(true);
    obj.flowLayout119:setMaxControlsPerLine(1);
    obj.flowLayout119:setLineSpacing(10);
    obj.flowLayout119:setName("flowLayout119");

    obj.flowPart12 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart12:setParent(obj.flowLayout119);
    obj.flowPart12:setName("flowPart12");
    obj.flowPart12:setMinWidth(100);
    obj.flowPart12:setHeight(100);
    obj.flowPart12:setMargins({right=10,left=10});

    obj.rectangle3 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.flowPart12);
    obj.rectangle3:setName("rectangle3");
    obj.rectangle3:setAlign("client");
    obj.rectangle3:setColor("black");
    obj.rectangle3:setCornerType("bevel");
    obj.rectangle3:setXradius(25);
    obj.rectangle3:setYradius(25);
    obj.rectangle3:setTop(100);
    obj.rectangle3:setStrokeColor("silver");
    obj.rectangle3:setStrokeSize(1);

    obj.label12 = GUI.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.rectangle3);
    obj.label12:setAlign("top");
    obj.label12:setText("Nível");
    obj.label12:setName("label12");
    obj.label12:setFontSize(12);
    obj.label12:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label12, "fontStyle",  "bold");

    obj.nivelClasse = GUI.fromHandle(_obj_newObject("label"));
    obj.nivelClasse:setParent(obj.rectangle3);
    obj.nivelClasse:setName("nivelClasse");
    obj.nivelClasse:setText("1");
    obj.nivelClasse:setFontSize(36);
    obj.nivelClasse:setAlign("client");
    obj.nivelClasse:setHorzTextAlign("center");
    lfm_setPropAsString(obj.nivelClasse, "fontStyle",  "bold");

    obj.label13 = GUI.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.rectangle3);
    obj.label13:setAlign("bottom");
    obj.label13:setText("Classe");
    obj.label13:setName("label13");
    obj.label13:setFontSize(12);
    obj.label13:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label13, "fontStyle",  "bold");

    obj.barraXpClasse = GUI.fromHandle(_obj_newObject("progressBar"));
    obj.barraXpClasse:setParent(obj.rectangle3);
    obj.barraXpClasse:setName("barraXpClasse");
    obj.barraXpClasse:setField("xpAtualClasse");
    obj.barraXpClasse:setFieldMax("xpMaxClasse");
    obj.barraXpClasse:setPosition(0);
    obj.barraXpClasse:setMax(100);
    obj.barraXpClasse:setAlign("bottom");
    obj.barraXpClasse:setColorMode("hl");
    obj.barraXpClasse:setHeight(7);
    obj.barraXpClasse:setHitTest(true);
    obj.barraXpClasse:setMargins({right=15,left=15});
    obj.barraXpClasse:setCursor("handPoint");

    obj.popupExperienciaClasse = GUI.fromHandle(_obj_newObject("popup"));
    obj.popupExperienciaClasse:setParent(obj.flowLayout119);
    obj.popupExperienciaClasse:setName("popupExperienciaClasse");
    obj.popupExperienciaClasse:setWidth(160);
    obj.popupExperienciaClasse:setHeight(30);
    obj.popupExperienciaClasse:setBackOpacity(0);
    obj.popupExperienciaClasse:setDrawContainer(false);

    obj.rectangle4 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.popupExperienciaClasse);
    obj.rectangle4:setAlign("client");
    obj.rectangle4:setColor("black");
    obj.rectangle4:setStrokeColor("white");
    obj.rectangle4:setStrokeSize(1);
    obj.rectangle4:setPadding({left=5,right=5});
    obj.rectangle4:setName("rectangle4");

    obj.label14 = GUI.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.rectangle4);
    obj.label14:setWidth(110);
    obj.label14:setHeight(20);
    obj.label14:setText("Adicionar Experiência:");
    obj.label14:setFontSize(11);
    obj.label14:setLeft(5);
    obj.label14:setName("label14");

    obj.xpRecebidoClasse = GUI.fromHandle(_obj_newObject("edit"));
    obj.xpRecebidoClasse:setParent(obj.rectangle4);
    obj.xpRecebidoClasse:setName("xpRecebidoClasse");
    obj.xpRecebidoClasse:setWidth(35);
    obj.xpRecebidoClasse:setHeight(20);
    obj.xpRecebidoClasse:setTransparent(true);
    obj.xpRecebidoClasse:setField("addXpClasse");
    obj.xpRecebidoClasse:setMargins({left=105});
    obj.xpRecebidoClasse:setFontSize(11);
    obj.xpRecebidoClasse:setVertTextAlign("center");
    obj.xpRecebidoClasse:setType("number");
    obj.xpRecebidoClasse:setAlign("client");

    obj.flowPart13 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart13:setParent(obj.flowLayout119);
    obj.flowPart13:setName("flowPart13");
    obj.flowPart13:setMinWidth(100);
    obj.flowPart13:setHeight(100);
    obj.flowPart13:setMargins({right=10,left=10});

    obj.rectangle5 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.flowPart13);
    obj.rectangle5:setName("rectangle5");
    obj.rectangle5:setAlign("client");
    obj.rectangle5:setColor("black");
    obj.rectangle5:setCornerType("bevel");
    obj.rectangle5:setXradius(25);
    obj.rectangle5:setYradius(25);
    obj.rectangle5:setTop(100);
    obj.rectangle5:setStrokeColor("silver");
    obj.rectangle5:setStrokeSize(1);

    obj.label15 = GUI.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj.rectangle5);
    obj.label15:setAlign("top");
    obj.label15:setText("Nível");
    obj.label15:setName("label15");
    obj.label15:setFontSize(12);
    obj.label15:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label15, "fontStyle",  "bold");

    obj.nivelProfissao = GUI.fromHandle(_obj_newObject("label"));
    obj.nivelProfissao:setParent(obj.rectangle5);
    obj.nivelProfissao:setName("nivelProfissao");
    obj.nivelProfissao:setText("1");
    obj.nivelProfissao:setFontSize(36);
    obj.nivelProfissao:setAlign("client");
    obj.nivelProfissao:setHorzTextAlign("center");
    lfm_setPropAsString(obj.nivelProfissao, "fontStyle",  "bold");

    obj.label16 = GUI.fromHandle(_obj_newObject("label"));
    obj.label16:setParent(obj.rectangle5);
    obj.label16:setAlign("bottom");
    obj.label16:setText("Profissão");
    obj.label16:setName("label16");
    obj.label16:setFontSize(12);
    obj.label16:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label16, "fontStyle",  "bold");

    obj.barraXpProfissao = GUI.fromHandle(_obj_newObject("progressBar"));
    obj.barraXpProfissao:setParent(obj.rectangle5);
    obj.barraXpProfissao:setName("barraXpProfissao");
    obj.barraXpProfissao:setField("xpAtualProfissao");
    obj.barraXpProfissao:setFieldMax("xpMaxProfissao");
    obj.barraXpProfissao:setPosition(0);
    obj.barraXpProfissao:setMax(100);
    obj.barraXpProfissao:setAlign("bottom");
    obj.barraXpProfissao:setColorMode("hl");
    obj.barraXpProfissao:setHeight(7);
    obj.barraXpProfissao:setHitTest(true);
    obj.barraXpProfissao:setMargins({right=15,left=15});
    obj.barraXpProfissao:setCursor("handPoint");

    obj.popupExperienciaProfissao = GUI.fromHandle(_obj_newObject("popup"));
    obj.popupExperienciaProfissao:setParent(obj.flowLayout119);
    obj.popupExperienciaProfissao:setName("popupExperienciaProfissao");
    obj.popupExperienciaProfissao:setWidth(160);
    obj.popupExperienciaProfissao:setHeight(30);
    obj.popupExperienciaProfissao:setBackOpacity(0);
    obj.popupExperienciaProfissao:setDrawContainer(false);

    obj.rectangle6 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.popupExperienciaProfissao);
    obj.rectangle6:setAlign("client");
    obj.rectangle6:setColor("black");
    obj.rectangle6:setStrokeColor("white");
    obj.rectangle6:setStrokeSize(1);
    obj.rectangle6:setPadding({left=5,right=5});
    obj.rectangle6:setName("rectangle6");

    obj.label17 = GUI.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj.rectangle6);
    obj.label17:setWidth(110);
    obj.label17:setHeight(20);
    obj.label17:setText("Adicionar Experiência:");
    obj.label17:setFontSize(11);
    obj.label17:setLeft(5);
    obj.label17:setName("label17");

    obj.xpRecebidoProfissao = GUI.fromHandle(_obj_newObject("edit"));
    obj.xpRecebidoProfissao:setParent(obj.rectangle6);
    obj.xpRecebidoProfissao:setName("xpRecebidoProfissao");
    obj.xpRecebidoProfissao:setWidth(35);
    obj.xpRecebidoProfissao:setHeight(20);
    obj.xpRecebidoProfissao:setTransparent(true);
    obj.xpRecebidoProfissao:setField("addXpProfissao");
    obj.xpRecebidoProfissao:setMargins({left=105});
    obj.xpRecebidoProfissao:setFontSize(11);
    obj.xpRecebidoProfissao:setVertTextAlign("center");
    obj.xpRecebidoProfissao:setType("number");
    obj.xpRecebidoProfissao:setAlign("client");

    obj.flowLayout120 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout120:setParent(obj.flowLayout116);
    obj.flowLayout120:setName("flowLayout120");
    obj.flowLayout120:setMaxWidth(1600);
    obj.flowLayout120:setMinWidth(300);
    obj.flowLayout120:setAutoHeight(true);
    obj.flowLayout120:setHorzAlign("center");
    obj.flowLayout120:setMaxControlsPerLine(3);
    obj.flowLayout120:setLineSpacing(10);

    obj.rectangle7 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle7:setParent(obj.flowLayout120);
    obj.rectangle7:setName("rectangle7");
    obj.rectangle7:setWidth(100);
    obj.rectangle7:setHeight(100);
    obj.rectangle7:setMargins({right=10,left=10});
    obj.rectangle7:setColor("black");
    obj.rectangle7:setCornerType("bevel");
    obj.rectangle7:setXradius(15);
    obj.rectangle7:setYradius(15);
    obj.rectangle7:setStrokeColor("silver");
    obj.rectangle7:setStrokeSize(1);

    obj.flowLayout121 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout121:setParent(obj.rectangle7);
    obj.flowLayout121:setAlign("client");
    obj.flowLayout121:setMaxControlsPerLine(1);
    obj.flowLayout121:setHorzAlign("center");
    obj.flowLayout121:setName("flowLayout121");

    obj.label18 = GUI.fromHandle(_obj_newObject("label"));
    obj.label18:setParent(obj.flowLayout121);
    obj.label18:setText("Constituição");
    obj.label18:setMargins({top=5});
    obj.label18:setName("label18");
    obj.label18:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label18, "fontStyle",  "bold");

    obj.conMod = GUI.fromHandle(_obj_newObject("label"));
    obj.conMod:setParent(obj.flowLayout121);
    obj.conMod:setName("conMod");
    obj.conMod:setText("+0");
    obj.conMod:setFontSize(38);
    obj.conMod:setMargins({top=15});
    obj.conMod:setHorzTextAlign("center");
    lfm_setPropAsString(obj.conMod, "fontStyle",  "bold");

    obj.flowPart14 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart14:setParent(obj.flowLayout121);
    obj.flowPart14:setWidth(100);
    obj.flowPart14:setName("flowPart14");

    obj.flowLayout122 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout122:setParent(obj.flowPart14);
    obj.flowLayout122:setAlign("client");
    obj.flowLayout122:setHorzAlign("center");
    obj.flowLayout122:setMargins({right=7});
    obj.flowLayout122:setName("flowLayout122");

    obj.conVantagem1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.conVantagem1:setParent(obj.flowLayout122);
    obj.conVantagem1:setName("conVantagem1");
    obj.conVantagem1:setWidth(10);
    obj.conVantagem1:setHeight(10);
    obj.conVantagem1:setColor("black");
    obj.conVantagem1:setCornerType("bevel");
    obj.conVantagem1:setXradius(5);
    obj.conVantagem1:setYradius(5);
    obj.conVantagem1:setMargins({left=4,right=4,top=20});
    obj.conVantagem1:setStrokeColor("white");
    obj.conVantagem1:setStrokeSize(1);

    obj.conVantagem3 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.conVantagem3:setParent(obj.flowLayout122);
    obj.conVantagem3:setName("conVantagem3");
    obj.conVantagem3:setWidth(10);
    obj.conVantagem3:setHeight(10);
    obj.conVantagem3:setColor("black");
    obj.conVantagem3:setCornerType("bevel");
    obj.conVantagem3:setXradius(5);
    obj.conVantagem3:setYradius(5);
    obj.conVantagem3:setMargins({left=4,right=4,top=20});
    obj.conVantagem3:setStrokeColor("white");
    obj.conVantagem3:setStrokeSize(1);

    obj.conVantagem5 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.conVantagem5:setParent(obj.flowLayout122);
    obj.conVantagem5:setName("conVantagem5");
    obj.conVantagem5:setWidth(10);
    obj.conVantagem5:setHeight(10);
    obj.conVantagem5:setColor("black");
    obj.conVantagem5:setCornerType("bevel");
    obj.conVantagem5:setXradius(5);
    obj.conVantagem5:setYradius(5);
    obj.conVantagem5:setMargins({left=4,right=4,top=20});
    obj.conVantagem5:setStrokeColor("white");
    obj.conVantagem5:setStrokeSize(1);

    obj.conVantagem4 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.conVantagem4:setParent(obj.flowLayout122);
    obj.conVantagem4:setName("conVantagem4");
    obj.conVantagem4:setWidth(10);
    obj.conVantagem4:setHeight(10);
    obj.conVantagem4:setColor("black");
    obj.conVantagem4:setCornerType("bevel");
    obj.conVantagem4:setXradius(5);
    obj.conVantagem4:setYradius(5);
    obj.conVantagem4:setMargins({left=4,right=4,top=20});
    obj.conVantagem4:setStrokeColor("white");
    obj.conVantagem4:setStrokeSize(1);

    obj.conVantagem2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.conVantagem2:setParent(obj.flowLayout122);
    obj.conVantagem2:setName("conVantagem2");
    obj.conVantagem2:setWidth(10);
    obj.conVantagem2:setHeight(10);
    obj.conVantagem2:setColor("black");
    obj.conVantagem2:setCornerType("bevel");
    obj.conVantagem2:setXradius(5);
    obj.conVantagem2:setYradius(5);
    obj.conVantagem2:setMargins({left=4,right=4,top=20});
    obj.conVantagem2:setStrokeColor("white");
    obj.conVantagem2:setStrokeSize(1);

    obj.dataLink11 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink11:setParent(obj.flowLayout121);
    obj.dataLink11:setField("basecon");
    obj.dataLink11:setName("dataLink11");

    obj.dataLink12 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink12:setParent(obj.flowLayout120);
    obj.dataLink12:setField("totalcon");
    obj.dataLink12:setName("dataLink12");

    obj.rectangle8 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle8:setParent(obj.flowLayout120);
    obj.rectangle8:setName("rectangle8");
    obj.rectangle8:setWidth(100);
    obj.rectangle8:setHeight(100);
    obj.rectangle8:setMargins({right=10,left=10});
    obj.rectangle8:setColor("black");
    obj.rectangle8:setCornerType("bevel");
    obj.rectangle8:setXradius(15);
    obj.rectangle8:setYradius(15);
    obj.rectangle8:setStrokeColor("silver");
    obj.rectangle8:setStrokeSize(1);

    obj.flowLayout123 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout123:setParent(obj.rectangle8);
    obj.flowLayout123:setAlign("client");
    obj.flowLayout123:setMaxControlsPerLine(1);
    obj.flowLayout123:setHorzAlign("center");
    obj.flowLayout123:setName("flowLayout123");

    obj.label19 = GUI.fromHandle(_obj_newObject("label"));
    obj.label19:setParent(obj.flowLayout123);
    obj.label19:setText("Força");
    obj.label19:setMargins({top=5});
    obj.label19:setName("label19");
    obj.label19:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label19, "fontStyle",  "bold");

    obj.forMod = GUI.fromHandle(_obj_newObject("label"));
    obj.forMod:setParent(obj.flowLayout123);
    obj.forMod:setName("forMod");
    obj.forMod:setText("+0");
    obj.forMod:setFontSize(38);
    obj.forMod:setMargins({top=15});
    obj.forMod:setHorzTextAlign("center");
    lfm_setPropAsString(obj.forMod, "fontStyle",  "bold");

    obj.flowPart15 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart15:setParent(obj.flowLayout123);
    obj.flowPart15:setWidth(100);
    obj.flowPart15:setName("flowPart15");

    obj.flowLayout124 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout124:setParent(obj.flowPart15);
    obj.flowLayout124:setAlign("client");
    obj.flowLayout124:setHorzAlign("center");
    obj.flowLayout124:setMargins({right=7});
    obj.flowLayout124:setName("flowLayout124");

    obj.forVantagem1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.forVantagem1:setParent(obj.flowLayout124);
    obj.forVantagem1:setName("forVantagem1");
    obj.forVantagem1:setWidth(10);
    obj.forVantagem1:setHeight(10);
    obj.forVantagem1:setColor("black");
    obj.forVantagem1:setCornerType("bevel");
    obj.forVantagem1:setXradius(5);
    obj.forVantagem1:setYradius(5);
    obj.forVantagem1:setMargins({left=4,right=4,top=20});
    obj.forVantagem1:setStrokeColor("white");
    obj.forVantagem1:setStrokeSize(1);

    obj.forVantagem3 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.forVantagem3:setParent(obj.flowLayout124);
    obj.forVantagem3:setName("forVantagem3");
    obj.forVantagem3:setWidth(10);
    obj.forVantagem3:setHeight(10);
    obj.forVantagem3:setColor("black");
    obj.forVantagem3:setCornerType("bevel");
    obj.forVantagem3:setXradius(5);
    obj.forVantagem3:setYradius(5);
    obj.forVantagem3:setMargins({left=4,right=4,top=20});
    obj.forVantagem3:setStrokeColor("white");
    obj.forVantagem3:setStrokeSize(1);

    obj.forVantagem5 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.forVantagem5:setParent(obj.flowLayout124);
    obj.forVantagem5:setName("forVantagem5");
    obj.forVantagem5:setWidth(10);
    obj.forVantagem5:setHeight(10);
    obj.forVantagem5:setColor("black");
    obj.forVantagem5:setCornerType("bevel");
    obj.forVantagem5:setXradius(5);
    obj.forVantagem5:setYradius(5);
    obj.forVantagem5:setMargins({left=4,right=4,top=20});
    obj.forVantagem5:setStrokeColor("white");
    obj.forVantagem5:setStrokeSize(1);

    obj.forVantagem4 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.forVantagem4:setParent(obj.flowLayout124);
    obj.forVantagem4:setName("forVantagem4");
    obj.forVantagem4:setWidth(10);
    obj.forVantagem4:setHeight(10);
    obj.forVantagem4:setColor("black");
    obj.forVantagem4:setCornerType("bevel");
    obj.forVantagem4:setXradius(5);
    obj.forVantagem4:setYradius(5);
    obj.forVantagem4:setMargins({left=4,right=4,top=20});
    obj.forVantagem4:setStrokeColor("white");
    obj.forVantagem4:setStrokeSize(1);

    obj.forVantagem2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.forVantagem2:setParent(obj.flowLayout124);
    obj.forVantagem2:setName("forVantagem2");
    obj.forVantagem2:setWidth(10);
    obj.forVantagem2:setHeight(10);
    obj.forVantagem2:setColor("black");
    obj.forVantagem2:setCornerType("bevel");
    obj.forVantagem2:setXradius(5);
    obj.forVantagem2:setYradius(5);
    obj.forVantagem2:setMargins({left=4,right=4,top=20});
    obj.forVantagem2:setStrokeColor("white");
    obj.forVantagem2:setStrokeSize(1);

    obj.dataLink13 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink13:setParent(obj.flowLayout123);
    obj.dataLink13:setField("basefor");
    obj.dataLink13:setName("dataLink13");

    obj.dataLink14 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink14:setParent(obj.flowLayout120);
    obj.dataLink14:setField("totalfor");
    obj.dataLink14:setName("dataLink14");

    obj.rectangle9 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle9:setParent(obj.flowLayout120);
    obj.rectangle9:setName("rectangle9");
    obj.rectangle9:setWidth(100);
    obj.rectangle9:setHeight(100);
    obj.rectangle9:setMargins({right=10,left=10});
    obj.rectangle9:setColor("black");
    obj.rectangle9:setCornerType("bevel");
    obj.rectangle9:setXradius(15);
    obj.rectangle9:setYradius(15);
    obj.rectangle9:setStrokeColor("silver");
    obj.rectangle9:setStrokeSize(1);

    obj.flowLayout125 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout125:setParent(obj.rectangle9);
    obj.flowLayout125:setAlign("client");
    obj.flowLayout125:setMaxControlsPerLine(1);
    obj.flowLayout125:setHorzAlign("center");
    obj.flowLayout125:setName("flowLayout125");

    obj.label20 = GUI.fromHandle(_obj_newObject("label"));
    obj.label20:setParent(obj.flowLayout125);
    obj.label20:setText("Destreza");
    obj.label20:setMargins({top=5});
    obj.label20:setName("label20");
    obj.label20:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label20, "fontStyle",  "bold");

    obj.dexMod = GUI.fromHandle(_obj_newObject("label"));
    obj.dexMod:setParent(obj.flowLayout125);
    obj.dexMod:setName("dexMod");
    obj.dexMod:setText("+0");
    obj.dexMod:setFontSize(38);
    obj.dexMod:setMargins({top=15});
    obj.dexMod:setHorzTextAlign("center");
    lfm_setPropAsString(obj.dexMod, "fontStyle",  "bold");

    obj.flowPart16 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart16:setParent(obj.flowLayout125);
    obj.flowPart16:setWidth(100);
    obj.flowPart16:setName("flowPart16");

    obj.flowLayout126 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout126:setParent(obj.flowPart16);
    obj.flowLayout126:setAlign("client");
    obj.flowLayout126:setHorzAlign("center");
    obj.flowLayout126:setMargins({right=7});
    obj.flowLayout126:setName("flowLayout126");

    obj.dexVantagem1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.dexVantagem1:setParent(obj.flowLayout126);
    obj.dexVantagem1:setName("dexVantagem1");
    obj.dexVantagem1:setWidth(10);
    obj.dexVantagem1:setHeight(10);
    obj.dexVantagem1:setColor("black");
    obj.dexVantagem1:setCornerType("bevel");
    obj.dexVantagem1:setXradius(5);
    obj.dexVantagem1:setYradius(5);
    obj.dexVantagem1:setMargins({left=4,right=4,top=20});
    obj.dexVantagem1:setStrokeColor("white");
    obj.dexVantagem1:setStrokeSize(1);

    obj.dexVantagem3 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.dexVantagem3:setParent(obj.flowLayout126);
    obj.dexVantagem3:setName("dexVantagem3");
    obj.dexVantagem3:setWidth(10);
    obj.dexVantagem3:setHeight(10);
    obj.dexVantagem3:setColor("black");
    obj.dexVantagem3:setCornerType("bevel");
    obj.dexVantagem3:setXradius(5);
    obj.dexVantagem3:setYradius(5);
    obj.dexVantagem3:setMargins({left=4,right=4,top=20});
    obj.dexVantagem3:setStrokeColor("white");
    obj.dexVantagem3:setStrokeSize(1);

    obj.dexVantagem5 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.dexVantagem5:setParent(obj.flowLayout126);
    obj.dexVantagem5:setName("dexVantagem5");
    obj.dexVantagem5:setWidth(10);
    obj.dexVantagem5:setHeight(10);
    obj.dexVantagem5:setColor("black");
    obj.dexVantagem5:setCornerType("bevel");
    obj.dexVantagem5:setXradius(5);
    obj.dexVantagem5:setYradius(5);
    obj.dexVantagem5:setMargins({left=4,right=4,top=20});
    obj.dexVantagem5:setStrokeColor("white");
    obj.dexVantagem5:setStrokeSize(1);

    obj.dexVantagem4 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.dexVantagem4:setParent(obj.flowLayout126);
    obj.dexVantagem4:setName("dexVantagem4");
    obj.dexVantagem4:setWidth(10);
    obj.dexVantagem4:setHeight(10);
    obj.dexVantagem4:setColor("black");
    obj.dexVantagem4:setCornerType("bevel");
    obj.dexVantagem4:setXradius(5);
    obj.dexVantagem4:setYradius(5);
    obj.dexVantagem4:setMargins({left=4,right=4,top=20});
    obj.dexVantagem4:setStrokeColor("white");
    obj.dexVantagem4:setStrokeSize(1);

    obj.dexVantagem2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.dexVantagem2:setParent(obj.flowLayout126);
    obj.dexVantagem2:setName("dexVantagem2");
    obj.dexVantagem2:setWidth(10);
    obj.dexVantagem2:setHeight(10);
    obj.dexVantagem2:setColor("black");
    obj.dexVantagem2:setCornerType("bevel");
    obj.dexVantagem2:setXradius(5);
    obj.dexVantagem2:setYradius(5);
    obj.dexVantagem2:setMargins({left=4,right=4,top=20});
    obj.dexVantagem2:setStrokeColor("white");
    obj.dexVantagem2:setStrokeSize(1);

    obj.dataLink15 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink15:setParent(obj.flowLayout125);
    obj.dataLink15:setField("basedex");
    obj.dataLink15:setName("dataLink15");

    obj.dataLink16 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink16:setParent(obj.flowLayout120);
    obj.dataLink16:setField("totaldex");
    obj.dataLink16:setName("dataLink16");

    obj.rectangle10 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle10:setParent(obj.flowLayout120);
    obj.rectangle10:setName("rectangle10");
    obj.rectangle10:setWidth(100);
    obj.rectangle10:setHeight(100);
    obj.rectangle10:setMargins({right=10,left=10});
    obj.rectangle10:setColor("black");
    obj.rectangle10:setCornerType("bevel");
    obj.rectangle10:setXradius(15);
    obj.rectangle10:setYradius(15);
    obj.rectangle10:setStrokeColor("silver");
    obj.rectangle10:setStrokeSize(1);

    obj.flowLayout127 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout127:setParent(obj.rectangle10);
    obj.flowLayout127:setAlign("client");
    obj.flowLayout127:setMaxControlsPerLine(1);
    obj.flowLayout127:setHorzAlign("center");
    obj.flowLayout127:setName("flowLayout127");

    obj.label21 = GUI.fromHandle(_obj_newObject("label"));
    obj.label21:setParent(obj.flowLayout127);
    obj.label21:setText("Carisma");
    obj.label21:setMargins({top=5});
    obj.label21:setName("label21");
    obj.label21:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label21, "fontStyle",  "bold");

    obj.carMod = GUI.fromHandle(_obj_newObject("label"));
    obj.carMod:setParent(obj.flowLayout127);
    obj.carMod:setName("carMod");
    obj.carMod:setText("+0");
    obj.carMod:setFontSize(38);
    obj.carMod:setMargins({top=15});
    obj.carMod:setHorzTextAlign("center");
    lfm_setPropAsString(obj.carMod, "fontStyle",  "bold");

    obj.flowPart17 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart17:setParent(obj.flowLayout127);
    obj.flowPart17:setWidth(100);
    obj.flowPart17:setName("flowPart17");

    obj.flowLayout128 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout128:setParent(obj.flowPart17);
    obj.flowLayout128:setAlign("client");
    obj.flowLayout128:setHorzAlign("center");
    obj.flowLayout128:setMargins({right=7});
    obj.flowLayout128:setName("flowLayout128");

    obj.carVantagem1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.carVantagem1:setParent(obj.flowLayout128);
    obj.carVantagem1:setName("carVantagem1");
    obj.carVantagem1:setWidth(10);
    obj.carVantagem1:setHeight(10);
    obj.carVantagem1:setColor("black");
    obj.carVantagem1:setCornerType("bevel");
    obj.carVantagem1:setXradius(5);
    obj.carVantagem1:setYradius(5);
    obj.carVantagem1:setMargins({left=4,right=4,top=20});
    obj.carVantagem1:setStrokeColor("white");
    obj.carVantagem1:setStrokeSize(1);

    obj.carVantagem3 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.carVantagem3:setParent(obj.flowLayout128);
    obj.carVantagem3:setName("carVantagem3");
    obj.carVantagem3:setWidth(10);
    obj.carVantagem3:setHeight(10);
    obj.carVantagem3:setColor("black");
    obj.carVantagem3:setCornerType("bevel");
    obj.carVantagem3:setXradius(5);
    obj.carVantagem3:setYradius(5);
    obj.carVantagem3:setMargins({left=4,right=4,top=20});
    obj.carVantagem3:setStrokeColor("white");
    obj.carVantagem3:setStrokeSize(1);

    obj.carVantagem5 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.carVantagem5:setParent(obj.flowLayout128);
    obj.carVantagem5:setName("carVantagem5");
    obj.carVantagem5:setWidth(10);
    obj.carVantagem5:setHeight(10);
    obj.carVantagem5:setColor("black");
    obj.carVantagem5:setCornerType("bevel");
    obj.carVantagem5:setXradius(5);
    obj.carVantagem5:setYradius(5);
    obj.carVantagem5:setMargins({left=4,right=4,top=20});
    obj.carVantagem5:setStrokeColor("white");
    obj.carVantagem5:setStrokeSize(1);

    obj.carVantagem4 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.carVantagem4:setParent(obj.flowLayout128);
    obj.carVantagem4:setName("carVantagem4");
    obj.carVantagem4:setWidth(10);
    obj.carVantagem4:setHeight(10);
    obj.carVantagem4:setColor("black");
    obj.carVantagem4:setCornerType("bevel");
    obj.carVantagem4:setXradius(5);
    obj.carVantagem4:setYradius(5);
    obj.carVantagem4:setMargins({left=4,right=4,top=20});
    obj.carVantagem4:setStrokeColor("white");
    obj.carVantagem4:setStrokeSize(1);

    obj.carVantagem2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.carVantagem2:setParent(obj.flowLayout128);
    obj.carVantagem2:setName("carVantagem2");
    obj.carVantagem2:setWidth(10);
    obj.carVantagem2:setHeight(10);
    obj.carVantagem2:setColor("black");
    obj.carVantagem2:setCornerType("bevel");
    obj.carVantagem2:setXradius(5);
    obj.carVantagem2:setYradius(5);
    obj.carVantagem2:setMargins({left=4,right=4,top=20});
    obj.carVantagem2:setStrokeColor("white");
    obj.carVantagem2:setStrokeSize(1);

    obj.dataLink17 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink17:setParent(obj.flowLayout127);
    obj.dataLink17:setField("basecar");
    obj.dataLink17:setName("dataLink17");

    obj.dataLink18 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink18:setParent(obj.flowLayout120);
    obj.dataLink18:setField("totalcar");
    obj.dataLink18:setName("dataLink18");

    obj.rectangle11 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle11:setParent(obj.flowLayout120);
    obj.rectangle11:setName("rectangle11");
    obj.rectangle11:setWidth(100);
    obj.rectangle11:setHeight(100);
    obj.rectangle11:setMargins({right=10,left=10});
    obj.rectangle11:setColor("black");
    obj.rectangle11:setCornerType("bevel");
    obj.rectangle11:setXradius(15);
    obj.rectangle11:setYradius(15);
    obj.rectangle11:setStrokeColor("silver");
    obj.rectangle11:setStrokeSize(1);

    obj.flowLayout129 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout129:setParent(obj.rectangle11);
    obj.flowLayout129:setAlign("client");
    obj.flowLayout129:setMaxControlsPerLine(1);
    obj.flowLayout129:setHorzAlign("center");
    obj.flowLayout129:setName("flowLayout129");

    obj.label22 = GUI.fromHandle(_obj_newObject("label"));
    obj.label22:setParent(obj.flowLayout129);
    obj.label22:setText("Inteligência");
    obj.label22:setMargins({top=5});
    obj.label22:setName("label22");
    obj.label22:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label22, "fontStyle",  "bold");

    obj.intMod = GUI.fromHandle(_obj_newObject("label"));
    obj.intMod:setParent(obj.flowLayout129);
    obj.intMod:setName("intMod");
    obj.intMod:setText("+0");
    obj.intMod:setFontSize(38);
    obj.intMod:setMargins({top=15});
    obj.intMod:setHorzTextAlign("center");
    lfm_setPropAsString(obj.intMod, "fontStyle",  "bold");

    obj.flowPart18 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart18:setParent(obj.flowLayout129);
    obj.flowPart18:setWidth(100);
    obj.flowPart18:setName("flowPart18");

    obj.flowLayout130 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout130:setParent(obj.flowPart18);
    obj.flowLayout130:setAlign("client");
    obj.flowLayout130:setHorzAlign("center");
    obj.flowLayout130:setMargins({right=7});
    obj.flowLayout130:setName("flowLayout130");

    obj.intVantagem1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.intVantagem1:setParent(obj.flowLayout130);
    obj.intVantagem1:setName("intVantagem1");
    obj.intVantagem1:setWidth(10);
    obj.intVantagem1:setHeight(10);
    obj.intVantagem1:setColor("black");
    obj.intVantagem1:setCornerType("bevel");
    obj.intVantagem1:setXradius(5);
    obj.intVantagem1:setYradius(5);
    obj.intVantagem1:setMargins({left=4,right=4,top=20});
    obj.intVantagem1:setStrokeColor("white");
    obj.intVantagem1:setStrokeSize(1);

    obj.intVantagem3 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.intVantagem3:setParent(obj.flowLayout130);
    obj.intVantagem3:setName("intVantagem3");
    obj.intVantagem3:setWidth(10);
    obj.intVantagem3:setHeight(10);
    obj.intVantagem3:setColor("black");
    obj.intVantagem3:setCornerType("bevel");
    obj.intVantagem3:setXradius(5);
    obj.intVantagem3:setYradius(5);
    obj.intVantagem3:setMargins({left=4,right=4,top=20});
    obj.intVantagem3:setStrokeColor("white");
    obj.intVantagem3:setStrokeSize(1);

    obj.intVantagem5 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.intVantagem5:setParent(obj.flowLayout130);
    obj.intVantagem5:setName("intVantagem5");
    obj.intVantagem5:setWidth(10);
    obj.intVantagem5:setHeight(10);
    obj.intVantagem5:setColor("black");
    obj.intVantagem5:setCornerType("bevel");
    obj.intVantagem5:setXradius(5);
    obj.intVantagem5:setYradius(5);
    obj.intVantagem5:setMargins({left=4,right=4,top=20});
    obj.intVantagem5:setStrokeColor("white");
    obj.intVantagem5:setStrokeSize(1);

    obj.intVantagem4 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.intVantagem4:setParent(obj.flowLayout130);
    obj.intVantagem4:setName("intVantagem4");
    obj.intVantagem4:setWidth(10);
    obj.intVantagem4:setHeight(10);
    obj.intVantagem4:setColor("black");
    obj.intVantagem4:setCornerType("bevel");
    obj.intVantagem4:setXradius(5);
    obj.intVantagem4:setYradius(5);
    obj.intVantagem4:setMargins({left=4,right=4,top=20});
    obj.intVantagem4:setStrokeColor("white");
    obj.intVantagem4:setStrokeSize(1);

    obj.intVantagem2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.intVantagem2:setParent(obj.flowLayout130);
    obj.intVantagem2:setName("intVantagem2");
    obj.intVantagem2:setWidth(10);
    obj.intVantagem2:setHeight(10);
    obj.intVantagem2:setColor("black");
    obj.intVantagem2:setCornerType("bevel");
    obj.intVantagem2:setXradius(5);
    obj.intVantagem2:setYradius(5);
    obj.intVantagem2:setMargins({left=4,right=4,top=20});
    obj.intVantagem2:setStrokeColor("white");
    obj.intVantagem2:setStrokeSize(1);

    obj.dataLink19 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink19:setParent(obj.flowLayout129);
    obj.dataLink19:setField("baseint");
    obj.dataLink19:setName("dataLink19");

    obj.dataLink20 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink20:setParent(obj.flowLayout120);
    obj.dataLink20:setField("totalint");
    obj.dataLink20:setName("dataLink20");

    obj.rectangle12 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle12:setParent(obj.flowLayout120);
    obj.rectangle12:setName("rectangle12");
    obj.rectangle12:setWidth(100);
    obj.rectangle12:setHeight(100);
    obj.rectangle12:setMargins({right=10,left=10});
    obj.rectangle12:setColor("black");
    obj.rectangle12:setCornerType("bevel");
    obj.rectangle12:setXradius(15);
    obj.rectangle12:setYradius(15);
    obj.rectangle12:setStrokeColor("silver");
    obj.rectangle12:setStrokeSize(1);

    obj.flowLayout131 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout131:setParent(obj.rectangle12);
    obj.flowLayout131:setAlign("client");
    obj.flowLayout131:setMaxControlsPerLine(1);
    obj.flowLayout131:setHorzAlign("center");
    obj.flowLayout131:setName("flowLayout131");

    obj.label23 = GUI.fromHandle(_obj_newObject("label"));
    obj.label23:setParent(obj.flowLayout131);
    obj.label23:setText("Sabedoria");
    obj.label23:setMargins({top=5});
    obj.label23:setName("label23");
    obj.label23:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label23, "fontStyle",  "bold");

    obj.sabMod = GUI.fromHandle(_obj_newObject("label"));
    obj.sabMod:setParent(obj.flowLayout131);
    obj.sabMod:setName("sabMod");
    obj.sabMod:setText("+0");
    obj.sabMod:setFontSize(38);
    obj.sabMod:setMargins({top=15});
    obj.sabMod:setHorzTextAlign("center");
    lfm_setPropAsString(obj.sabMod, "fontStyle",  "bold");

    obj.flowPart19 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart19:setParent(obj.flowLayout131);
    obj.flowPart19:setWidth(100);
    obj.flowPart19:setName("flowPart19");

    obj.flowLayout132 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout132:setParent(obj.flowPart19);
    obj.flowLayout132:setAlign("client");
    obj.flowLayout132:setHorzAlign("center");
    obj.flowLayout132:setMargins({right=7});
    obj.flowLayout132:setName("flowLayout132");

    obj.sabVantagem1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.sabVantagem1:setParent(obj.flowLayout132);
    obj.sabVantagem1:setName("sabVantagem1");
    obj.sabVantagem1:setWidth(10);
    obj.sabVantagem1:setHeight(10);
    obj.sabVantagem1:setColor("black");
    obj.sabVantagem1:setCornerType("bevel");
    obj.sabVantagem1:setXradius(5);
    obj.sabVantagem1:setYradius(5);
    obj.sabVantagem1:setMargins({left=4,right=4,top=20});
    obj.sabVantagem1:setStrokeColor("white");
    obj.sabVantagem1:setStrokeSize(1);

    obj.sabVantagem3 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.sabVantagem3:setParent(obj.flowLayout132);
    obj.sabVantagem3:setName("sabVantagem3");
    obj.sabVantagem3:setWidth(10);
    obj.sabVantagem3:setHeight(10);
    obj.sabVantagem3:setColor("black");
    obj.sabVantagem3:setCornerType("bevel");
    obj.sabVantagem3:setXradius(5);
    obj.sabVantagem3:setYradius(5);
    obj.sabVantagem3:setMargins({left=4,right=4,top=20});
    obj.sabVantagem3:setStrokeColor("white");
    obj.sabVantagem3:setStrokeSize(1);

    obj.sabVantagem5 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.sabVantagem5:setParent(obj.flowLayout132);
    obj.sabVantagem5:setName("sabVantagem5");
    obj.sabVantagem5:setWidth(10);
    obj.sabVantagem5:setHeight(10);
    obj.sabVantagem5:setColor("black");
    obj.sabVantagem5:setCornerType("bevel");
    obj.sabVantagem5:setXradius(5);
    obj.sabVantagem5:setYradius(5);
    obj.sabVantagem5:setMargins({left=4,right=4,top=20});
    obj.sabVantagem5:setStrokeColor("white");
    obj.sabVantagem5:setStrokeSize(1);

    obj.sabVantagem4 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.sabVantagem4:setParent(obj.flowLayout132);
    obj.sabVantagem4:setName("sabVantagem4");
    obj.sabVantagem4:setWidth(10);
    obj.sabVantagem4:setHeight(10);
    obj.sabVantagem4:setColor("black");
    obj.sabVantagem4:setCornerType("bevel");
    obj.sabVantagem4:setXradius(5);
    obj.sabVantagem4:setYradius(5);
    obj.sabVantagem4:setMargins({left=4,right=4,top=20});
    obj.sabVantagem4:setStrokeColor("white");
    obj.sabVantagem4:setStrokeSize(1);

    obj.sabVantagem2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.sabVantagem2:setParent(obj.flowLayout132);
    obj.sabVantagem2:setName("sabVantagem2");
    obj.sabVantagem2:setWidth(10);
    obj.sabVantagem2:setHeight(10);
    obj.sabVantagem2:setColor("black");
    obj.sabVantagem2:setCornerType("bevel");
    obj.sabVantagem2:setXradius(5);
    obj.sabVantagem2:setYradius(5);
    obj.sabVantagem2:setMargins({left=4,right=4,top=20});
    obj.sabVantagem2:setStrokeColor("white");
    obj.sabVantagem2:setStrokeSize(1);

    obj.dataLink21 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink21:setParent(obj.flowLayout131);
    obj.dataLink21:setField("basesab");
    obj.dataLink21:setName("dataLink21");

    obj.dataLink22 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink22:setParent(obj.flowLayout120);
    obj.dataLink22:setField("totalsab");
    obj.dataLink22:setName("dataLink22");

    obj.flowLayout133 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout133:setParent(obj.flowLayout116);
    obj.flowLayout133:setMaxControlsPerLine(4);
    obj.flowLayout133:setName("flowLayout133");
    obj.flowLayout133:setMaxWidth(1600);
    obj.flowLayout133:setMinWidth(300);
    obj.flowLayout133:setAutoHeight(true);
    obj.flowLayout133:setHorzAlign("center");
    obj.flowLayout133:setLineSpacing(10);

    obj.rectangle13 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle13:setParent(obj.flowLayout133);
    obj.rectangle13:setColor("#808080");
    obj.rectangle13:setStrokeColor("black");
    obj.rectangle13:setStrokeSize(2);
    obj.rectangle13:setName("rectangle13");
    obj.rectangle13:setWidth(100);
    obj.rectangle13:setHeight(100);
    obj.rectangle13:setMargins({right=10,left=10});
    obj.rectangle13:setCornerType("bevel");
    obj.rectangle13:setXradius(15);
    obj.rectangle13:setYradius(15);

    obj.flowLayout134 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout134:setParent(obj.rectangle13);
    obj.flowLayout134:setAlign("client");
    obj.flowLayout134:setMaxControlsPerLine(1);
    obj.flowLayout134:setHorzAlign("center");
    obj.flowLayout134:setName("flowLayout134");

    obj.label24 = GUI.fromHandle(_obj_newObject("label"));
    obj.label24:setParent(obj.flowLayout134);
    obj.label24:setText("Acerto");
    obj.label24:setMargins({top=5});
    obj.label24:setFontColor("black");
    obj.label24:setName("label24");
    obj.label24:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label24, "fontStyle",  "bold");

    obj.AcertoMod = GUI.fromHandle(_obj_newObject("label"));
    obj.AcertoMod:setParent(obj.flowLayout134);
    obj.AcertoMod:setName("AcertoMod");
    obj.AcertoMod:setText("+0");
    obj.AcertoMod:setFontSize(38);
    obj.AcertoMod:setMargins({top=15});
    obj.AcertoMod:setFontColor("black");
    obj.AcertoMod:setHorzTextAlign("center");
    lfm_setPropAsString(obj.AcertoMod, "fontStyle",  "bold");

    obj.dataLink23 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink23:setParent(obj.flowLayout133);
    obj.dataLink23:setField("totalAcerto");
    obj.dataLink23:setName("dataLink23");

    obj.rectangle14 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle14:setParent(obj.flowLayout133);
    obj.rectangle14:setColor("#808080");
    obj.rectangle14:setStrokeColor("black");
    obj.rectangle14:setStrokeSize(2);
    obj.rectangle14:setName("rectangle14");
    obj.rectangle14:setWidth(100);
    obj.rectangle14:setHeight(100);
    obj.rectangle14:setMargins({right=10,left=10});
    obj.rectangle14:setCornerType("bevel");
    obj.rectangle14:setXradius(15);
    obj.rectangle14:setYradius(15);

    obj.flowLayout135 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout135:setParent(obj.rectangle14);
    obj.flowLayout135:setAlign("client");
    obj.flowLayout135:setMaxControlsPerLine(1);
    obj.flowLayout135:setHorzAlign("center");
    obj.flowLayout135:setName("flowLayout135");

    obj.label25 = GUI.fromHandle(_obj_newObject("label"));
    obj.label25:setParent(obj.flowLayout135);
    obj.label25:setText("Mira");
    obj.label25:setMargins({top=5});
    obj.label25:setFontColor("black");
    obj.label25:setName("label25");
    obj.label25:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label25, "fontStyle",  "bold");

    obj.MiraMod = GUI.fromHandle(_obj_newObject("label"));
    obj.MiraMod:setParent(obj.flowLayout135);
    obj.MiraMod:setName("MiraMod");
    obj.MiraMod:setText("+0");
    obj.MiraMod:setFontSize(38);
    obj.MiraMod:setMargins({top=15});
    obj.MiraMod:setFontColor("black");
    obj.MiraMod:setHorzTextAlign("center");
    lfm_setPropAsString(obj.MiraMod, "fontStyle",  "bold");

    obj.dataLink24 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink24:setParent(obj.flowLayout133);
    obj.dataLink24:setField("totalMira");
    obj.dataLink24:setName("dataLink24");

    obj.rectangle15 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle15:setParent(obj.flowLayout133);
    obj.rectangle15:setColor("#808080");
    obj.rectangle15:setStrokeColor("black");
    obj.rectangle15:setStrokeSize(2);
    obj.rectangle15:setName("rectangle15");
    obj.rectangle15:setWidth(100);
    obj.rectangle15:setHeight(100);
    obj.rectangle15:setMargins({right=10,left=10});
    obj.rectangle15:setCornerType("bevel");
    obj.rectangle15:setXradius(15);
    obj.rectangle15:setYradius(15);

    obj.flowLayout136 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout136:setParent(obj.rectangle15);
    obj.flowLayout136:setAlign("client");
    obj.flowLayout136:setMaxControlsPerLine(1);
    obj.flowLayout136:setHorzAlign("center");
    obj.flowLayout136:setName("flowLayout136");

    obj.label26 = GUI.fromHandle(_obj_newObject("label"));
    obj.label26:setParent(obj.flowLayout136);
    obj.label26:setText("Esquiva");
    obj.label26:setMargins({top=5});
    obj.label26:setFontColor("black");
    obj.label26:setName("label26");
    obj.label26:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label26, "fontStyle",  "bold");

    obj.EsquivaMod = GUI.fromHandle(_obj_newObject("label"));
    obj.EsquivaMod:setParent(obj.flowLayout136);
    obj.EsquivaMod:setName("EsquivaMod");
    obj.EsquivaMod:setText("+0");
    obj.EsquivaMod:setFontSize(38);
    obj.EsquivaMod:setMargins({top=15});
    obj.EsquivaMod:setFontColor("black");
    obj.EsquivaMod:setHorzTextAlign("center");
    lfm_setPropAsString(obj.EsquivaMod, "fontStyle",  "bold");

    obj.dataLink25 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink25:setParent(obj.flowLayout133);
    obj.dataLink25:setField("totalEsquiva");
    obj.dataLink25:setName("dataLink25");

    obj.rectangle16 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle16:setParent(obj.flowLayout133);
    obj.rectangle16:setColor("#808080");
    obj.rectangle16:setStrokeColor("black");
    obj.rectangle16:setStrokeSize(2);
    obj.rectangle16:setName("rectangle16");
    obj.rectangle16:setWidth(100);
    obj.rectangle16:setHeight(100);
    obj.rectangle16:setMargins({right=10,left=10});
    obj.rectangle16:setCornerType("bevel");
    obj.rectangle16:setXradius(15);
    obj.rectangle16:setYradius(15);

    obj.flowLayout137 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout137:setParent(obj.rectangle16);
    obj.flowLayout137:setAlign("client");
    obj.flowLayout137:setMaxControlsPerLine(1);
    obj.flowLayout137:setHorzAlign("center");
    obj.flowLayout137:setName("flowLayout137");

    obj.label27 = GUI.fromHandle(_obj_newObject("label"));
    obj.label27:setParent(obj.flowLayout137);
    obj.label27:setText("Bloqueio");
    obj.label27:setMargins({top=5});
    obj.label27:setFontColor("black");
    obj.label27:setName("label27");
    obj.label27:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label27, "fontStyle",  "bold");

    obj.BloqueioMod = GUI.fromHandle(_obj_newObject("label"));
    obj.BloqueioMod:setParent(obj.flowLayout137);
    obj.BloqueioMod:setName("BloqueioMod");
    obj.BloqueioMod:setText("+0");
    obj.BloqueioMod:setFontSize(38);
    obj.BloqueioMod:setMargins({top=15});
    obj.BloqueioMod:setFontColor("black");
    obj.BloqueioMod:setHorzTextAlign("center");
    lfm_setPropAsString(obj.BloqueioMod, "fontStyle",  "bold");

    obj.dataLink26 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink26:setParent(obj.flowLayout133);
    obj.dataLink26:setField("totalBloqueio");
    obj.dataLink26:setName("dataLink26");

    obj.abaVaziaaba1 = GUI.fromHandle(_obj_newObject("tab"));
    obj.abaVaziaaba1:setParent(obj.pgcPrincipal);
    obj.abaVaziaaba1:setName("abaVaziaaba1");
    obj.abaVaziaaba1:setTitle("Perfil");

    obj.rectangle17 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle17:setParent(obj.abaVaziaaba1);
    obj.rectangle17:setAlign("client");
    obj.rectangle17:setColor("#40000000");
    obj.rectangle17:setXradius(10);
    obj.rectangle17:setYradius(10);
    obj.rectangle17:setName("rectangle17");

    obj.scrollBox2 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox2:setParent(obj.rectangle17);
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

    obj.flowLayout138 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout138:setParent(obj.popupaba1);
    obj.flowLayout138:setWidth(150);
    obj.flowLayout138:setHeight(50);
    obj.flowLayout138:setPadding({top=5,bottom=5,left=5,right=5});
    obj.flowLayout138:setMaxControlsPerLine(2);
    obj.flowLayout138:setName("flowLayout138");

    obj.editaba1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.editaba1:setParent(obj.flowLayout138);
    obj.editaba1:setAlign("top");
    obj.editaba1:setName("editaba1");
    obj.editaba1:setField("editaba1");
    obj.editaba1:setFontSize(12);
    obj.editaba1:setTransparent(true);
    obj.editaba1:setVertTextAlign("center");
    obj.editaba1:setWidth(100);

    obj.okButtonaba1 = GUI.fromHandle(_obj_newObject("button"));
    obj.okButtonaba1:setParent(obj.flowLayout138);
    obj.okButtonaba1:setName("okButtonaba1");
    obj.okButtonaba1:setText("ok");
    obj.okButtonaba1:setWidth(25);
    obj.okButtonaba1:setFontSize(10);

    obj.horzLine11 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine11:setParent(obj.flowLayout138);
    obj.horzLine11:setAlign("top");
    obj.horzLine11:setStrokeColor("#FFFFFF50");
    obj.horzLine11:setStrokeSize(1);
    obj.horzLine11:setWidth(100);
    obj.horzLine11:setName("horzLine11");

    obj.abaVaziaaba2 = GUI.fromHandle(_obj_newObject("tab"));
    obj.abaVaziaaba2:setParent(obj.pgcPrincipal);
    obj.abaVaziaaba2:setName("abaVaziaaba2");
    obj.abaVaziaaba2:setTitle("Habilidades");

    obj.rectangle18 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle18:setParent(obj.abaVaziaaba2);
    obj.rectangle18:setAlign("client");
    obj.rectangle18:setColor("#40000000");
    obj.rectangle18:setXradius(10);
    obj.rectangle18:setYradius(10);
    obj.rectangle18:setName("rectangle18");

    obj.scrollBox3 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox3:setParent(obj.rectangle18);
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

    obj.flowLayout139 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout139:setParent(obj.popupaba2);
    obj.flowLayout139:setWidth(150);
    obj.flowLayout139:setHeight(50);
    obj.flowLayout139:setPadding({top=5,bottom=5,left=5,right=5});
    obj.flowLayout139:setMaxControlsPerLine(2);
    obj.flowLayout139:setName("flowLayout139");

    obj.editaba2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.editaba2:setParent(obj.flowLayout139);
    obj.editaba2:setAlign("top");
    obj.editaba2:setName("editaba2");
    obj.editaba2:setField("editaba2");
    obj.editaba2:setFontSize(12);
    obj.editaba2:setTransparent(true);
    obj.editaba2:setVertTextAlign("center");
    obj.editaba2:setWidth(100);

    obj.okButtonaba2 = GUI.fromHandle(_obj_newObject("button"));
    obj.okButtonaba2:setParent(obj.flowLayout139);
    obj.okButtonaba2:setName("okButtonaba2");
    obj.okButtonaba2:setText("ok");
    obj.okButtonaba2:setWidth(25);
    obj.okButtonaba2:setFontSize(10);

    obj.horzLine12 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine12:setParent(obj.flowLayout139);
    obj.horzLine12:setAlign("top");
    obj.horzLine12:setStrokeColor("#FFFFFF50");
    obj.horzLine12:setStrokeSize(1);
    obj.horzLine12:setWidth(100);
    obj.horzLine12:setName("horzLine12");

    obj.abaVaziaaba3 = GUI.fromHandle(_obj_newObject("tab"));
    obj.abaVaziaaba3:setParent(obj.pgcPrincipal);
    obj.abaVaziaaba3:setName("abaVaziaaba3");
    obj.abaVaziaaba3:setTitle("Inventário");

    obj.rectangle19 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle19:setParent(obj.abaVaziaaba3);
    obj.rectangle19:setAlign("client");
    obj.rectangle19:setColor("#40000000");
    obj.rectangle19:setXradius(10);
    obj.rectangle19:setYradius(10);
    obj.rectangle19:setName("rectangle19");

    obj.scrollBox4 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox4:setParent(obj.rectangle19);
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

    obj.flowLayout140 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout140:setParent(obj.popupaba3);
    obj.flowLayout140:setWidth(150);
    obj.flowLayout140:setHeight(50);
    obj.flowLayout140:setPadding({top=5,bottom=5,left=5,right=5});
    obj.flowLayout140:setMaxControlsPerLine(2);
    obj.flowLayout140:setName("flowLayout140");

    obj.editaba3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.editaba3:setParent(obj.flowLayout140);
    obj.editaba3:setAlign("top");
    obj.editaba3:setName("editaba3");
    obj.editaba3:setField("editaba3");
    obj.editaba3:setFontSize(12);
    obj.editaba3:setTransparent(true);
    obj.editaba3:setVertTextAlign("center");
    obj.editaba3:setWidth(100);

    obj.okButtonaba3 = GUI.fromHandle(_obj_newObject("button"));
    obj.okButtonaba3:setParent(obj.flowLayout140);
    obj.okButtonaba3:setName("okButtonaba3");
    obj.okButtonaba3:setText("ok");
    obj.okButtonaba3:setWidth(25);
    obj.okButtonaba3:setFontSize(10);

    obj.horzLine13 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine13:setParent(obj.flowLayout140);
    obj.horzLine13:setAlign("top");
    obj.horzLine13:setStrokeColor("#FFFFFF50");
    obj.horzLine13:setStrokeSize(1);
    obj.horzLine13:setWidth(100);
    obj.horzLine13:setName("horzLine13");

    obj.abaVaziaaba4 = GUI.fromHandle(_obj_newObject("tab"));
    obj.abaVaziaaba4:setParent(obj.pgcPrincipal);
    obj.abaVaziaaba4:setName("abaVaziaaba4");
    obj.abaVaziaaba4:setTitle("Outros Itens");

    obj.rectangle20 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle20:setParent(obj.abaVaziaaba4);
    obj.rectangle20:setAlign("client");
    obj.rectangle20:setColor("#40000000");
    obj.rectangle20:setXradius(10);
    obj.rectangle20:setYradius(10);
    obj.rectangle20:setName("rectangle20");

    obj.scrollBox5 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox5:setParent(obj.rectangle20);
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

    obj.flowLayout141 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout141:setParent(obj.popupaba4);
    obj.flowLayout141:setWidth(150);
    obj.flowLayout141:setHeight(50);
    obj.flowLayout141:setPadding({top=5,bottom=5,left=5,right=5});
    obj.flowLayout141:setMaxControlsPerLine(2);
    obj.flowLayout141:setName("flowLayout141");

    obj.editaba4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.editaba4:setParent(obj.flowLayout141);
    obj.editaba4:setAlign("top");
    obj.editaba4:setName("editaba4");
    obj.editaba4:setField("editaba4");
    obj.editaba4:setFontSize(12);
    obj.editaba4:setTransparent(true);
    obj.editaba4:setVertTextAlign("center");
    obj.editaba4:setWidth(100);

    obj.okButtonaba4 = GUI.fromHandle(_obj_newObject("button"));
    obj.okButtonaba4:setParent(obj.flowLayout141);
    obj.okButtonaba4:setName("okButtonaba4");
    obj.okButtonaba4:setText("ok");
    obj.okButtonaba4:setWidth(25);
    obj.okButtonaba4:setFontSize(10);

    obj.horzLine14 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine14:setParent(obj.flowLayout141);
    obj.horzLine14:setAlign("top");
    obj.horzLine14:setStrokeColor("#FFFFFF50");
    obj.horzLine14:setStrokeSize(1);
    obj.horzLine14:setWidth(100);
    obj.horzLine14:setName("horzLine14");

    obj.abaVaziaaba5 = GUI.fromHandle(_obj_newObject("tab"));
    obj.abaVaziaaba5:setParent(obj.pgcPrincipal);
    obj.abaVaziaaba5:setName("abaVaziaaba5");
    obj.abaVaziaaba5:setTitle("NPC's");

    obj.rectangle21 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle21:setParent(obj.abaVaziaaba5);
    obj.rectangle21:setAlign("client");
    obj.rectangle21:setColor("#40000000");
    obj.rectangle21:setXradius(10);
    obj.rectangle21:setYradius(10);
    obj.rectangle21:setName("rectangle21");

    obj.scrollBox6 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox6:setParent(obj.rectangle21);
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

    obj.flowLayout142 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout142:setParent(obj.popupaba5);
    obj.flowLayout142:setWidth(150);
    obj.flowLayout142:setHeight(50);
    obj.flowLayout142:setPadding({top=5,bottom=5,left=5,right=5});
    obj.flowLayout142:setMaxControlsPerLine(2);
    obj.flowLayout142:setName("flowLayout142");

    obj.editaba5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.editaba5:setParent(obj.flowLayout142);
    obj.editaba5:setAlign("top");
    obj.editaba5:setName("editaba5");
    obj.editaba5:setField("editaba5");
    obj.editaba5:setFontSize(12);
    obj.editaba5:setTransparent(true);
    obj.editaba5:setVertTextAlign("center");
    obj.editaba5:setWidth(100);

    obj.okButtonaba5 = GUI.fromHandle(_obj_newObject("button"));
    obj.okButtonaba5:setParent(obj.flowLayout142);
    obj.okButtonaba5:setName("okButtonaba5");
    obj.okButtonaba5:setText("ok");
    obj.okButtonaba5:setWidth(25);
    obj.okButtonaba5:setFontSize(10);

    obj.horzLine15 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine15:setParent(obj.flowLayout142);
    obj.horzLine15:setAlign("top");
    obj.horzLine15:setStrokeColor("#FFFFFF50");
    obj.horzLine15:setStrokeSize(1);
    obj.horzLine15:setWidth(100);
    obj.horzLine15:setName("horzLine15");

    obj.abaVaziaaba6 = GUI.fromHandle(_obj_newObject("tab"));
    obj.abaVaziaaba6:setParent(obj.pgcPrincipal);
    obj.abaVaziaaba6:setName("abaVaziaaba6");
    obj.abaVaziaaba6:setTitle("Anotações");

    obj.rectangle22 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle22:setParent(obj.abaVaziaaba6);
    obj.rectangle22:setAlign("client");
    obj.rectangle22:setColor("#40000000");
    obj.rectangle22:setXradius(10);
    obj.rectangle22:setYradius(10);
    obj.rectangle22:setName("rectangle22");

    obj.scrollBox7 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox7:setParent(obj.rectangle22);
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

    obj.flowLayout143 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout143:setParent(obj.popupaba6);
    obj.flowLayout143:setWidth(150);
    obj.flowLayout143:setHeight(50);
    obj.flowLayout143:setPadding({top=5,bottom=5,left=5,right=5});
    obj.flowLayout143:setMaxControlsPerLine(2);
    obj.flowLayout143:setName("flowLayout143");

    obj.editaba6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.editaba6:setParent(obj.flowLayout143);
    obj.editaba6:setAlign("top");
    obj.editaba6:setName("editaba6");
    obj.editaba6:setField("editaba6");
    obj.editaba6:setFontSize(12);
    obj.editaba6:setTransparent(true);
    obj.editaba6:setVertTextAlign("center");
    obj.editaba6:setWidth(100);

    obj.okButtonaba6 = GUI.fromHandle(_obj_newObject("button"));
    obj.okButtonaba6:setParent(obj.flowLayout143);
    obj.okButtonaba6:setName("okButtonaba6");
    obj.okButtonaba6:setText("ok");
    obj.okButtonaba6:setWidth(25);
    obj.okButtonaba6:setFontSize(10);

    obj.horzLine16 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine16:setParent(obj.flowLayout143);
    obj.horzLine16:setAlign("top");
    obj.horzLine16:setStrokeColor("#FFFFFF50");
    obj.horzLine16:setStrokeSize(1);
    obj.horzLine16:setWidth(100);
    obj.horzLine16:setName("horzLine16");

    obj.abaVaziaaba7 = GUI.fromHandle(_obj_newObject("tab"));
    obj.abaVaziaaba7:setParent(obj.pgcPrincipal);
    obj.abaVaziaaba7:setName("abaVaziaaba7");
    obj.abaVaziaaba7:setTitle("Extra1");

    obj.rectangle23 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle23:setParent(obj.abaVaziaaba7);
    obj.rectangle23:setAlign("client");
    obj.rectangle23:setColor("#40000000");
    obj.rectangle23:setXradius(10);
    obj.rectangle23:setYradius(10);
    obj.rectangle23:setName("rectangle23");

    obj.scrollBox8 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox8:setParent(obj.rectangle23);
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

    obj.flowLayout144 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout144:setParent(obj.popupaba7);
    obj.flowLayout144:setWidth(150);
    obj.flowLayout144:setHeight(50);
    obj.flowLayout144:setPadding({top=5,bottom=5,left=5,right=5});
    obj.flowLayout144:setMaxControlsPerLine(2);
    obj.flowLayout144:setName("flowLayout144");

    obj.editaba7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.editaba7:setParent(obj.flowLayout144);
    obj.editaba7:setAlign("top");
    obj.editaba7:setName("editaba7");
    obj.editaba7:setField("editaba7");
    obj.editaba7:setFontSize(12);
    obj.editaba7:setTransparent(true);
    obj.editaba7:setVertTextAlign("center");
    obj.editaba7:setWidth(100);

    obj.okButtonaba7 = GUI.fromHandle(_obj_newObject("button"));
    obj.okButtonaba7:setParent(obj.flowLayout144);
    obj.okButtonaba7:setName("okButtonaba7");
    obj.okButtonaba7:setText("ok");
    obj.okButtonaba7:setWidth(25);
    obj.okButtonaba7:setFontSize(10);

    obj.horzLine17 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine17:setParent(obj.flowLayout144);
    obj.horzLine17:setAlign("top");
    obj.horzLine17:setStrokeColor("#FFFFFF50");
    obj.horzLine17:setStrokeSize(1);
    obj.horzLine17:setWidth(100);
    obj.horzLine17:setName("horzLine17");

    obj.abaVaziaaba8 = GUI.fromHandle(_obj_newObject("tab"));
    obj.abaVaziaaba8:setParent(obj.pgcPrincipal);
    obj.abaVaziaaba8:setName("abaVaziaaba8");
    obj.abaVaziaaba8:setTitle("Extra2");

    obj.rectangle24 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle24:setParent(obj.abaVaziaaba8);
    obj.rectangle24:setAlign("client");
    obj.rectangle24:setColor("#40000000");
    obj.rectangle24:setXradius(10);
    obj.rectangle24:setYradius(10);
    obj.rectangle24:setName("rectangle24");

    obj.scrollBox9 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox9:setParent(obj.rectangle24);
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

    obj.flowLayout145 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout145:setParent(obj.popupaba8);
    obj.flowLayout145:setWidth(150);
    obj.flowLayout145:setHeight(50);
    obj.flowLayout145:setPadding({top=5,bottom=5,left=5,right=5});
    obj.flowLayout145:setMaxControlsPerLine(2);
    obj.flowLayout145:setName("flowLayout145");

    obj.editaba8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.editaba8:setParent(obj.flowLayout145);
    obj.editaba8:setAlign("top");
    obj.editaba8:setName("editaba8");
    obj.editaba8:setField("editaba8");
    obj.editaba8:setFontSize(12);
    obj.editaba8:setTransparent(true);
    obj.editaba8:setVertTextAlign("center");
    obj.editaba8:setWidth(100);

    obj.okButtonaba8 = GUI.fromHandle(_obj_newObject("button"));
    obj.okButtonaba8:setParent(obj.flowLayout145);
    obj.okButtonaba8:setName("okButtonaba8");
    obj.okButtonaba8:setText("ok");
    obj.okButtonaba8:setWidth(25);
    obj.okButtonaba8:setFontSize(10);

    obj.horzLine18 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine18:setParent(obj.flowLayout145);
    obj.horzLine18:setAlign("top");
    obj.horzLine18:setStrokeColor("#FFFFFF50");
    obj.horzLine18:setStrokeSize(1);
    obj.horzLine18:setWidth(100);
    obj.horzLine18:setName("horzLine18");

    obj.abaVaziaaba9 = GUI.fromHandle(_obj_newObject("tab"));
    obj.abaVaziaaba9:setParent(obj.pgcPrincipal);
    obj.abaVaziaaba9:setName("abaVaziaaba9");
    obj.abaVaziaaba9:setTitle("Extra3");

    obj.rectangle25 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle25:setParent(obj.abaVaziaaba9);
    obj.rectangle25:setAlign("client");
    obj.rectangle25:setColor("#40000000");
    obj.rectangle25:setXradius(10);
    obj.rectangle25:setYradius(10);
    obj.rectangle25:setName("rectangle25");

    obj.scrollBox10 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox10:setParent(obj.rectangle25);
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

    obj.flowLayout146 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout146:setParent(obj.popupaba9);
    obj.flowLayout146:setWidth(150);
    obj.flowLayout146:setHeight(50);
    obj.flowLayout146:setPadding({top=5,bottom=5,left=5,right=5});
    obj.flowLayout146:setMaxControlsPerLine(2);
    obj.flowLayout146:setName("flowLayout146");

    obj.editaba9 = GUI.fromHandle(_obj_newObject("edit"));
    obj.editaba9:setParent(obj.flowLayout146);
    obj.editaba9:setAlign("top");
    obj.editaba9:setName("editaba9");
    obj.editaba9:setField("editaba9");
    obj.editaba9:setFontSize(12);
    obj.editaba9:setTransparent(true);
    obj.editaba9:setVertTextAlign("center");
    obj.editaba9:setWidth(100);

    obj.okButtonaba9 = GUI.fromHandle(_obj_newObject("button"));
    obj.okButtonaba9:setParent(obj.flowLayout146);
    obj.okButtonaba9:setName("okButtonaba9");
    obj.okButtonaba9:setText("ok");
    obj.okButtonaba9:setWidth(25);
    obj.okButtonaba9:setFontSize(10);

    obj.horzLine19 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine19:setParent(obj.flowLayout146);
    obj.horzLine19:setAlign("top");
    obj.horzLine19:setStrokeColor("#FFFFFF50");
    obj.horzLine19:setStrokeSize(1);
    obj.horzLine19:setWidth(100);
    obj.horzLine19:setName("horzLine19");

    obj.abaVaziaaba10 = GUI.fromHandle(_obj_newObject("tab"));
    obj.abaVaziaaba10:setParent(obj.pgcPrincipal);
    obj.abaVaziaaba10:setName("abaVaziaaba10");
    obj.abaVaziaaba10:setTitle("Extra4");

    obj.rectangle26 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle26:setParent(obj.abaVaziaaba10);
    obj.rectangle26:setAlign("client");
    obj.rectangle26:setColor("#40000000");
    obj.rectangle26:setXradius(10);
    obj.rectangle26:setYradius(10);
    obj.rectangle26:setName("rectangle26");

    obj.scrollBox11 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox11:setParent(obj.rectangle26);
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

    obj.flowLayout147 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout147:setParent(obj.popupaba10);
    obj.flowLayout147:setWidth(150);
    obj.flowLayout147:setHeight(50);
    obj.flowLayout147:setPadding({top=5,bottom=5,left=5,right=5});
    obj.flowLayout147:setMaxControlsPerLine(2);
    obj.flowLayout147:setName("flowLayout147");

    obj.editaba10 = GUI.fromHandle(_obj_newObject("edit"));
    obj.editaba10:setParent(obj.flowLayout147);
    obj.editaba10:setAlign("top");
    obj.editaba10:setName("editaba10");
    obj.editaba10:setField("editaba10");
    obj.editaba10:setFontSize(12);
    obj.editaba10:setTransparent(true);
    obj.editaba10:setVertTextAlign("center");
    obj.editaba10:setWidth(100);

    obj.okButtonaba10 = GUI.fromHandle(_obj_newObject("button"));
    obj.okButtonaba10:setParent(obj.flowLayout147);
    obj.okButtonaba10:setName("okButtonaba10");
    obj.okButtonaba10:setText("ok");
    obj.okButtonaba10:setWidth(25);
    obj.okButtonaba10:setFontSize(10);

    obj.horzLine20 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine20:setParent(obj.flowLayout147);
    obj.horzLine20:setAlign("top");
    obj.horzLine20:setStrokeColor("#FFFFFF50");
    obj.horzLine20:setStrokeSize(1);
    obj.horzLine20:setWidth(100);
    obj.horzLine20:setName("horzLine20");

    obj._e_event0 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local nivel = tonumber(sheet.nivelcon) or 0
                            local classe = tonumber(sheet.classecon) or 0
                            local raca = tonumber(sheet.racacon) or 0
                            local treino = tonumber(sheet.treinocon) or 0
                            local outro = tonumber(sheet.outrocon) or 0
                            local multiplicador = tonumber(sheet.multiplicadorcon) or 0
                            local extra = tonumber(sheet.extracon) or 0
                            local base = nivel + classe + raca + treino + outro
            
                            sheet.basecon = base
                            sheet.totalcon = math.floor(base * (1 + (multiplicador/100))) + extra
            
                            if 'con' ~= 'car' and 'con' ~= 'sab' then
                                if base >= 800 then 
                                    self.basecon.fontColor = 'red'
                                elseif base >= 400 then
                                    self.basecon.fontColor = 'yellow'
                                else
                                    self.basecon.fontColor = 'white'
                                end
                            else
                                if base >= 400 then
                                    self.basecon.fontColor = 'red'
                                elseif base >= 200 then
                                    self.basecon.fontColor = 'yellow'
                                else
                                    self.basecon.fontColor = 'white'
                                end
                            end
        end, obj);

    obj._e_event1 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local nivel = tonumber(sheet.nivelfor) or 0
                            local classe = tonumber(sheet.classefor) or 0
                            local raca = tonumber(sheet.racafor) or 0
                            local treino = tonumber(sheet.treinofor) or 0
                            local outro = tonumber(sheet.outrofor) or 0
                            local multiplicador = tonumber(sheet.multiplicadorfor) or 0
                            local extra = tonumber(sheet.extrafor) or 0
                            local base = nivel + classe + raca + treino + outro
            
                            sheet.basefor = base
                            sheet.totalfor = math.floor(base * (1 + (multiplicador/100))) + extra
            
                            if 'for' ~= 'car' and 'for' ~= 'sab' then
                                if base >= 800 then 
                                    self.basefor.fontColor = 'red'
                                elseif base >= 400 then
                                    self.basefor.fontColor = 'yellow'
                                else
                                    self.basefor.fontColor = 'white'
                                end
                            else
                                if base >= 400 then
                                    self.basefor.fontColor = 'red'
                                elseif base >= 200 then
                                    self.basefor.fontColor = 'yellow'
                                else
                                    self.basefor.fontColor = 'white'
                                end
                            end
        end, obj);

    obj._e_event2 = obj.dataLink3:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local nivel = tonumber(sheet.niveldex) or 0
                            local classe = tonumber(sheet.classedex) or 0
                            local raca = tonumber(sheet.racadex) or 0
                            local treino = tonumber(sheet.treinodex) or 0
                            local outro = tonumber(sheet.outrodex) or 0
                            local multiplicador = tonumber(sheet.multiplicadordex) or 0
                            local extra = tonumber(sheet.extradex) or 0
                            local base = nivel + classe + raca + treino + outro
            
                            sheet.basedex = base
                            sheet.totaldex = math.floor(base * (1 + (multiplicador/100))) + extra
            
                            if 'dex' ~= 'car' and 'dex' ~= 'sab' then
                                if base >= 800 then 
                                    self.basedex.fontColor = 'red'
                                elseif base >= 400 then
                                    self.basedex.fontColor = 'yellow'
                                else
                                    self.basedex.fontColor = 'white'
                                end
                            else
                                if base >= 400 then
                                    self.basedex.fontColor = 'red'
                                elseif base >= 200 then
                                    self.basedex.fontColor = 'yellow'
                                else
                                    self.basedex.fontColor = 'white'
                                end
                            end
        end, obj);

    obj._e_event3 = obj.dataLink4:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local nivel = tonumber(sheet.nivelcar) or 0
                            local classe = tonumber(sheet.classecar) or 0
                            local raca = tonumber(sheet.racacar) or 0
                            local treino = tonumber(sheet.treinocar) or 0
                            local outro = tonumber(sheet.outrocar) or 0
                            local multiplicador = tonumber(sheet.multiplicadorcar) or 0
                            local extra = tonumber(sheet.extracar) or 0
                            local base = nivel + classe + raca + treino + outro
            
                            sheet.basecar = base
                            sheet.totalcar = math.floor(base * (1 + (multiplicador/100))) + extra
            
                            if 'car' ~= 'car' and 'car' ~= 'sab' then
                                if base >= 800 then 
                                    self.basecar.fontColor = 'red'
                                elseif base >= 400 then
                                    self.basecar.fontColor = 'yellow'
                                else
                                    self.basecar.fontColor = 'white'
                                end
                            else
                                if base >= 400 then
                                    self.basecar.fontColor = 'red'
                                elseif base >= 200 then
                                    self.basecar.fontColor = 'yellow'
                                else
                                    self.basecar.fontColor = 'white'
                                end
                            end
        end, obj);

    obj._e_event4 = obj.dataLink5:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local nivel = tonumber(sheet.nivelint) or 0
                            local classe = tonumber(sheet.classeint) or 0
                            local raca = tonumber(sheet.racaint) or 0
                            local treino = tonumber(sheet.treinoint) or 0
                            local outro = tonumber(sheet.outroint) or 0
                            local multiplicador = tonumber(sheet.multiplicadorint) or 0
                            local extra = tonumber(sheet.extraint) or 0
                            local base = nivel + classe + raca + treino + outro
            
                            sheet.baseint = base
                            sheet.totalint = math.floor(base * (1 + (multiplicador/100))) + extra
            
                            if 'int' ~= 'car' and 'int' ~= 'sab' then
                                if base >= 800 then 
                                    self.baseint.fontColor = 'red'
                                elseif base >= 400 then
                                    self.baseint.fontColor = 'yellow'
                                else
                                    self.baseint.fontColor = 'white'
                                end
                            else
                                if base >= 400 then
                                    self.baseint.fontColor = 'red'
                                elseif base >= 200 then
                                    self.baseint.fontColor = 'yellow'
                                else
                                    self.baseint.fontColor = 'white'
                                end
                            end
        end, obj);

    obj._e_event5 = obj.dataLink6:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local nivel = tonumber(sheet.nivelsab) or 0
                            local classe = tonumber(sheet.classesab) or 0
                            local raca = tonumber(sheet.racasab) or 0
                            local treino = tonumber(sheet.treinosab) or 0
                            local outro = tonumber(sheet.outrosab) or 0
                            local multiplicador = tonumber(sheet.multiplicadorsab) or 0
                            local extra = tonumber(sheet.extrasab) or 0
                            local base = nivel + classe + raca + treino + outro
            
                            sheet.basesab = base
                            sheet.totalsab = math.floor(base * (1 + (multiplicador/100))) + extra
            
                            if 'sab' ~= 'car' and 'sab' ~= 'sab' then
                                if base >= 800 then 
                                    self.basesab.fontColor = 'red'
                                elseif base >= 400 then
                                    self.basesab.fontColor = 'yellow'
                                else
                                    self.basesab.fontColor = 'white'
                                end
                            else
                                if base >= 400 then
                                    self.basesab.fontColor = 'red'
                                elseif base >= 200 then
                                    self.basesab.fontColor = 'yellow'
                                else
                                    self.basesab.fontColor = 'white'
                                end
                            end
        end, obj);

    obj._e_event6 = obj.dataLink7:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local destreza = tonumber(sheet.destrezaAcerto) or 0
                            local classe = tonumber(sheet.classeAcerto) or 0
                            local multiplicador = tonumber(sheet.multiplicadorAcerto) or 0
                            local arma = tonumber(sheet.armaAcerto) or 0
                            local armadura = tonumber(sheet.armaduraAcerto) or 0
                            local extra = tonumber(sheet.extraAcerto) or 0
                            local base = destreza + classe
            
                            sheet.baseAcerto = base
                            sheet.totalAcerto = math.floor(base * (1 + (multiplicador/100))) + arma + armadura + extra
        end, obj);

    obj._e_event7 = obj.dataLink8:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local destreza = tonumber(sheet.destrezaMira) or 0
                            local classe = tonumber(sheet.classeMira) or 0
                            local multiplicador = tonumber(sheet.multiplicadorMira) or 0
                            local arma = tonumber(sheet.armaMira) or 0
                            local armadura = tonumber(sheet.armaduraMira) or 0
                            local extra = tonumber(sheet.extraMira) or 0
                            local base = destreza + classe
            
                            sheet.baseMira = base
                            sheet.totalMira = math.floor(base * (1 + (multiplicador/100))) + arma + armadura + extra
        end, obj);

    obj._e_event8 = obj.dataLink9:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local destreza = tonumber(sheet.destrezaBloqueio) or 0
                            local classe = tonumber(sheet.classeBloqueio) or 0
                            local multiplicador = tonumber(sheet.multiplicadorBloqueio) or 0
                            local arma = tonumber(sheet.armaBloqueio) or 0
                            local armadura = tonumber(sheet.armaduraBloqueio) or 0
                            local extra = tonumber(sheet.extraBloqueio) or 0
                            local base = destreza + classe
            
                            sheet.baseBloqueio = base
                            sheet.totalBloqueio = math.floor(base * (1 + (multiplicador/100))) + arma + armadura + extra
        end, obj);

    obj._e_event9 = obj.dataLink10:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local destreza = tonumber(sheet.destrezaEsquiva) or 0
                            local classe = tonumber(sheet.classeEsquiva) or 0
                            local multiplicador = tonumber(sheet.multiplicadorEsquiva) or 0
                            local arma = tonumber(sheet.armaEsquiva) or 0
                            local armadura = tonumber(sheet.armaduraEsquiva) or 0
                            local extra = tonumber(sheet.extraEsquiva) or 0
                            local base = destreza + classe
            
                            sheet.baseEsquiva = base
                            sheet.totalEsquiva = math.floor(base * (1 + (multiplicador/100))) + arma + armadura + extra
        end, obj);

    obj._e_event10 = obj.comboBox1:addEventListener("onChange",
        function (_)
            self.fundoDaImagem.color = sheet.corDoFundo
        end, obj);

    obj._e_event11 = obj.image1:addEventListener("onMenu",
        function (_, x, y)
            self.popupMenuImagem:show('mouse')
        end, obj);

    obj._e_event12 = obj.barraXpClasse:addEventListener("onDblClick",
        function (_)
            self.popupExperienciaClasse:show('bottomCenter',self.barraXpClasse)
                                        self.xpRecebidoClasse:setFocus()
        end, obj);

    obj._e_event13 = obj.xpRecebidoClasse:addEventListener("onKeyDown",
        function (_, event)
            
                                        if event.keyCode == 13 then
                                            local atual = self.xpAtualClasse or 0
                                            local recebido = self.addXpClasse or 0
                                            self.xpAtualClasse = atual + recebido
                                            self.addXpClasse = nil
                                        end
                                  
        end, obj);

    obj._e_event14 = obj.barraXpProfissao:addEventListener("onDblClick",
        function (_)
            self.popupExperienciaProfissao:show('bottomCenter',self.barraXpProfissao)
                                        self.xpRecebidoProfissao:setFocus()
        end, obj);

    obj._e_event15 = obj.xpRecebidoProfissao:addEventListener("onKeyDown",
        function (_, event)
            
                                        if event.keyCode == 13 then
                                            local atual = self.xpAtualProfissao or 0
                                            local recebido = self.addXpProfissao or 0
                                            self.xpAtualProfissao = atual + recebido
                                            self.addXpProfissao = nil
                                        end
                                  
        end, obj);

    obj._e_event16 = obj.rectangle7:addEventListener("onMenu",
        function (_, x, y)
            self.popupAtributos:show()
        end, obj);

    obj._e_event17 = obj.dataLink11:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local base = sheet.basecon
            
                            if base >= 400 then
                                color1, color2, color3, color4 = 'white', 'white', 'white', 'white'
                            elseif base >= 300 then
                                color1, color2, color3, color4 = 'white', 'white', 'white', 'black'
                            elseif base >= 200 then
                                color1, color2, color3, color4 = 'white', 'white', 'black', 'black'
                            elseif base >= 100 then
                                color1, color2, color3, color4 = 'white', 'black', 'black', 'black'
                            else
                                color1, color2, color3, color4 = 'black', 'black', 'black', 'black'
                            end
                            self.conVantagem1.color = color1
                            self.conVantagem2.color = color2
                            self.conVantagem3.color = color3
                            self.conVantagem4.color = color4
        end, obj);

    obj._e_event18 = obj.dataLink12:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            self.conMod.text = tostring('+'..math.floor(sheet.totalcon/10))
        end, obj);

    obj._e_event19 = obj.rectangle8:addEventListener("onMenu",
        function (_, x, y)
            self.popupAtributos:show()
        end, obj);

    obj._e_event20 = obj.dataLink13:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local base = sheet.basefor
            
                            if base >= 400 then
                                color1, color2, color3, color4 = 'white', 'white', 'white', 'white'
                            elseif base >= 300 then
                                color1, color2, color3, color4 = 'white', 'white', 'white', 'black'
                            elseif base >= 200 then
                                color1, color2, color3, color4 = 'white', 'white', 'black', 'black'
                            elseif base >= 100 then
                                color1, color2, color3, color4 = 'white', 'black', 'black', 'black'
                            else
                                color1, color2, color3, color4 = 'black', 'black', 'black', 'black'
                            end
                            self.forVantagem1.color = color1
                            self.forVantagem2.color = color2
                            self.forVantagem3.color = color3
                            self.forVantagem4.color = color4
        end, obj);

    obj._e_event21 = obj.dataLink14:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            self.forMod.text = tostring('+'..math.floor(sheet.totalfor/10))
        end, obj);

    obj._e_event22 = obj.rectangle9:addEventListener("onMenu",
        function (_, x, y)
            self.popupAtributos:show()
        end, obj);

    obj._e_event23 = obj.dataLink15:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local base = sheet.basedex
            
                            if base >= 400 then
                                color1, color2, color3, color4 = 'white', 'white', 'white', 'white'
                            elseif base >= 300 then
                                color1, color2, color3, color4 = 'white', 'white', 'white', 'black'
                            elseif base >= 200 then
                                color1, color2, color3, color4 = 'white', 'white', 'black', 'black'
                            elseif base >= 100 then
                                color1, color2, color3, color4 = 'white', 'black', 'black', 'black'
                            else
                                color1, color2, color3, color4 = 'black', 'black', 'black', 'black'
                            end
                            self.dexVantagem1.color = color1
                            self.dexVantagem2.color = color2
                            self.dexVantagem3.color = color3
                            self.dexVantagem4.color = color4
        end, obj);

    obj._e_event24 = obj.dataLink16:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            self.dexMod.text = tostring('+'..math.floor(sheet.totaldex/10))
        end, obj);

    obj._e_event25 = obj.rectangle10:addEventListener("onMenu",
        function (_, x, y)
            self.popupAtributos:show()
        end, obj);

    obj._e_event26 = obj.dataLink17:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local base = sheet.basecar
            
                            if base >= 400 then
                                color1, color2, color3, color4 = 'white', 'white', 'white', 'white'
                            elseif base >= 300 then
                                color1, color2, color3, color4 = 'white', 'white', 'white', 'black'
                            elseif base >= 200 then
                                color1, color2, color3, color4 = 'white', 'white', 'black', 'black'
                            elseif base >= 100 then
                                color1, color2, color3, color4 = 'white', 'black', 'black', 'black'
                            else
                                color1, color2, color3, color4 = 'black', 'black', 'black', 'black'
                            end
                            self.carVantagem1.color = color1
                            self.carVantagem2.color = color2
                            self.carVantagem3.color = color3
                            self.carVantagem4.color = color4
        end, obj);

    obj._e_event27 = obj.dataLink18:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            self.carMod.text = tostring('+'..math.floor(sheet.totalcar/10))
        end, obj);

    obj._e_event28 = obj.rectangle11:addEventListener("onMenu",
        function (_, x, y)
            self.popupAtributos:show()
        end, obj);

    obj._e_event29 = obj.dataLink19:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local base = sheet.baseint
            
                            if base >= 400 then
                                color1, color2, color3, color4 = 'white', 'white', 'white', 'white'
                            elseif base >= 300 then
                                color1, color2, color3, color4 = 'white', 'white', 'white', 'black'
                            elseif base >= 200 then
                                color1, color2, color3, color4 = 'white', 'white', 'black', 'black'
                            elseif base >= 100 then
                                color1, color2, color3, color4 = 'white', 'black', 'black', 'black'
                            else
                                color1, color2, color3, color4 = 'black', 'black', 'black', 'black'
                            end
                            self.intVantagem1.color = color1
                            self.intVantagem2.color = color2
                            self.intVantagem3.color = color3
                            self.intVantagem4.color = color4
        end, obj);

    obj._e_event30 = obj.dataLink20:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            self.intMod.text = tostring('+'..math.floor(sheet.totalint/10))
        end, obj);

    obj._e_event31 = obj.rectangle12:addEventListener("onMenu",
        function (_, x, y)
            self.popupAtributos:show()
        end, obj);

    obj._e_event32 = obj.dataLink21:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local base = sheet.basesab
            
                            if base >= 400 then
                                color1, color2, color3, color4 = 'white', 'white', 'white', 'white'
                            elseif base >= 300 then
                                color1, color2, color3, color4 = 'white', 'white', 'white', 'black'
                            elseif base >= 200 then
                                color1, color2, color3, color4 = 'white', 'white', 'black', 'black'
                            elseif base >= 100 then
                                color1, color2, color3, color4 = 'white', 'black', 'black', 'black'
                            else
                                color1, color2, color3, color4 = 'black', 'black', 'black', 'black'
                            end
                            self.sabVantagem1.color = color1
                            self.sabVantagem2.color = color2
                            self.sabVantagem3.color = color3
                            self.sabVantagem4.color = color4
        end, obj);

    obj._e_event33 = obj.dataLink22:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            self.sabMod.text = tostring('+'..math.floor(sheet.totalsab/10))
        end, obj);

    obj._e_event34 = obj.rectangle13:addEventListener("onMenu",
        function (_, x, y)
            self.popupAtributosDestreza:show()
        end, obj);

    obj._e_event35 = obj.dataLink23:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            self.AcertoMod.text = tostring('+'..math.floor(sheet.totalAcerto/10))
        end, obj);

    obj._e_event36 = obj.rectangle14:addEventListener("onMenu",
        function (_, x, y)
            self.popupAtributosDestreza:show()
        end, obj);

    obj._e_event37 = obj.dataLink24:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            self.MiraMod.text = tostring('+'..math.floor(sheet.totalMira/10))
        end, obj);

    obj._e_event38 = obj.rectangle15:addEventListener("onMenu",
        function (_, x, y)
            self.popupAtributosDestreza:show()
        end, obj);

    obj._e_event39 = obj.dataLink25:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            self.EsquivaMod.text = tostring('+'..math.floor(sheet.totalEsquiva/10))
        end, obj);

    obj._e_event40 = obj.rectangle16:addEventListener("onMenu",
        function (_, x, y)
            self.popupAtributosDestreza:show()
        end, obj);

    obj._e_event41 = obj.dataLink26:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            self.BloqueioMod.text = tostring('+'..math.floor(sheet.totalBloqueio/10))
        end, obj);

    obj._e_event42 = obj.abaVaziaaba1:addEventListener("onDblClick",
        function (_)
            self.popupaba1:show('mouse')
                                    self.editaba1:setFocus();
        end, obj);

    obj._e_event43 = obj.editaba1:addEventListener("onKeyDown",
        function (_, event)
            
                                    if event.keyCode == 13 then
                                        self.okButtonaba1:setFocus();
                                        self.abaVaziaaba1.title = sheet.editaba1;
                                        self.popupaba1:close();
                                        sheet.editaba1 = '';
                                    end
        end, obj);

    obj._e_event44 = obj.okButtonaba1:addEventListener("onClick",
        function (_)
            self.abaVaziaaba1.title = sheet.editaba1;
                                               self.popupaba1:close();
                                               sheet.editaba1 = '';
        end, obj);

    obj._e_event45 = obj.abaVaziaaba2:addEventListener("onDblClick",
        function (_)
            self.popupaba2:show('mouse')
                                    self.editaba2:setFocus();
        end, obj);

    obj._e_event46 = obj.editaba2:addEventListener("onKeyDown",
        function (_, event)
            
                                    if event.keyCode == 13 then
                                        self.okButtonaba2:setFocus();
                                        self.abaVaziaaba2.title = sheet.editaba2;
                                        self.popupaba2:close();
                                        sheet.editaba2 = '';
                                    end
        end, obj);

    obj._e_event47 = obj.okButtonaba2:addEventListener("onClick",
        function (_)
            self.abaVaziaaba2.title = sheet.editaba2;
                                               self.popupaba2:close();
                                               sheet.editaba2 = '';
        end, obj);

    obj._e_event48 = obj.abaVaziaaba3:addEventListener("onDblClick",
        function (_)
            self.popupaba3:show('mouse')
                                    self.editaba3:setFocus();
        end, obj);

    obj._e_event49 = obj.editaba3:addEventListener("onKeyDown",
        function (_, event)
            
                                    if event.keyCode == 13 then
                                        self.okButtonaba3:setFocus();
                                        self.abaVaziaaba3.title = sheet.editaba3;
                                        self.popupaba3:close();
                                        sheet.editaba3 = '';
                                    end
        end, obj);

    obj._e_event50 = obj.okButtonaba3:addEventListener("onClick",
        function (_)
            self.abaVaziaaba3.title = sheet.editaba3;
                                               self.popupaba3:close();
                                               sheet.editaba3 = '';
        end, obj);

    obj._e_event51 = obj.abaVaziaaba4:addEventListener("onDblClick",
        function (_)
            self.popupaba4:show('mouse')
                                    self.editaba4:setFocus();
        end, obj);

    obj._e_event52 = obj.editaba4:addEventListener("onKeyDown",
        function (_, event)
            
                                    if event.keyCode == 13 then
                                        self.okButtonaba4:setFocus();
                                        self.abaVaziaaba4.title = sheet.editaba4;
                                        self.popupaba4:close();
                                        sheet.editaba4 = '';
                                    end
        end, obj);

    obj._e_event53 = obj.okButtonaba4:addEventListener("onClick",
        function (_)
            self.abaVaziaaba4.title = sheet.editaba4;
                                               self.popupaba4:close();
                                               sheet.editaba4 = '';
        end, obj);

    obj._e_event54 = obj.abaVaziaaba5:addEventListener("onDblClick",
        function (_)
            self.popupaba5:show('mouse')
                                    self.editaba5:setFocus();
        end, obj);

    obj._e_event55 = obj.editaba5:addEventListener("onKeyDown",
        function (_, event)
            
                                    if event.keyCode == 13 then
                                        self.okButtonaba5:setFocus();
                                        self.abaVaziaaba5.title = sheet.editaba5;
                                        self.popupaba5:close();
                                        sheet.editaba5 = '';
                                    end
        end, obj);

    obj._e_event56 = obj.okButtonaba5:addEventListener("onClick",
        function (_)
            self.abaVaziaaba5.title = sheet.editaba5;
                                               self.popupaba5:close();
                                               sheet.editaba5 = '';
        end, obj);

    obj._e_event57 = obj.abaVaziaaba6:addEventListener("onDblClick",
        function (_)
            self.popupaba6:show('mouse')
                                    self.editaba6:setFocus();
        end, obj);

    obj._e_event58 = obj.editaba6:addEventListener("onKeyDown",
        function (_, event)
            
                                    if event.keyCode == 13 then
                                        self.okButtonaba6:setFocus();
                                        self.abaVaziaaba6.title = sheet.editaba6;
                                        self.popupaba6:close();
                                        sheet.editaba6 = '';
                                    end
        end, obj);

    obj._e_event59 = obj.okButtonaba6:addEventListener("onClick",
        function (_)
            self.abaVaziaaba6.title = sheet.editaba6;
                                               self.popupaba6:close();
                                               sheet.editaba6 = '';
        end, obj);

    obj._e_event60 = obj.abaVaziaaba7:addEventListener("onDblClick",
        function (_)
            self.popupaba7:show('mouse')
                                    self.editaba7:setFocus();
        end, obj);

    obj._e_event61 = obj.editaba7:addEventListener("onKeyDown",
        function (_, event)
            
                                    if event.keyCode == 13 then
                                        self.okButtonaba7:setFocus();
                                        self.abaVaziaaba7.title = sheet.editaba7;
                                        self.popupaba7:close();
                                        sheet.editaba7 = '';
                                    end
        end, obj);

    obj._e_event62 = obj.okButtonaba7:addEventListener("onClick",
        function (_)
            self.abaVaziaaba7.title = sheet.editaba7;
                                               self.popupaba7:close();
                                               sheet.editaba7 = '';
        end, obj);

    obj._e_event63 = obj.abaVaziaaba8:addEventListener("onDblClick",
        function (_)
            self.popupaba8:show('mouse')
                                    self.editaba8:setFocus();
        end, obj);

    obj._e_event64 = obj.editaba8:addEventListener("onKeyDown",
        function (_, event)
            
                                    if event.keyCode == 13 then
                                        self.okButtonaba8:setFocus();
                                        self.abaVaziaaba8.title = sheet.editaba8;
                                        self.popupaba8:close();
                                        sheet.editaba8 = '';
                                    end
        end, obj);

    obj._e_event65 = obj.okButtonaba8:addEventListener("onClick",
        function (_)
            self.abaVaziaaba8.title = sheet.editaba8;
                                               self.popupaba8:close();
                                               sheet.editaba8 = '';
        end, obj);

    obj._e_event66 = obj.abaVaziaaba9:addEventListener("onDblClick",
        function (_)
            self.popupaba9:show('mouse')
                                    self.editaba9:setFocus();
        end, obj);

    obj._e_event67 = obj.editaba9:addEventListener("onKeyDown",
        function (_, event)
            
                                    if event.keyCode == 13 then
                                        self.okButtonaba9:setFocus();
                                        self.abaVaziaaba9.title = sheet.editaba9;
                                        self.popupaba9:close();
                                        sheet.editaba9 = '';
                                    end
        end, obj);

    obj._e_event68 = obj.okButtonaba9:addEventListener("onClick",
        function (_)
            self.abaVaziaaba9.title = sheet.editaba9;
                                               self.popupaba9:close();
                                               sheet.editaba9 = '';
        end, obj);

    obj._e_event69 = obj.abaVaziaaba10:addEventListener("onDblClick",
        function (_)
            self.popupaba10:show('mouse')
                                    self.editaba10:setFocus();
        end, obj);

    obj._e_event70 = obj.editaba10:addEventListener("onKeyDown",
        function (_, event)
            
                                    if event.keyCode == 13 then
                                        self.okButtonaba10:setFocus();
                                        self.abaVaziaaba10.title = sheet.editaba10;
                                        self.popupaba10:close();
                                        sheet.editaba10 = '';
                                    end
        end, obj);

    obj._e_event71 = obj.okButtonaba10:addEventListener("onClick",
        function (_)
            self.abaVaziaaba10.title = sheet.editaba10;
                                               self.popupaba10:close();
                                               sheet.editaba10 = '';
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event71);
        __o_rrpgObjs.removeEventListenerById(self._e_event70);
        __o_rrpgObjs.removeEventListenerById(self._e_event69);
        __o_rrpgObjs.removeEventListenerById(self._e_event68);
        __o_rrpgObjs.removeEventListenerById(self._e_event67);
        __o_rrpgObjs.removeEventListenerById(self._e_event66);
        __o_rrpgObjs.removeEventListenerById(self._e_event65);
        __o_rrpgObjs.removeEventListenerById(self._e_event64);
        __o_rrpgObjs.removeEventListenerById(self._e_event63);
        __o_rrpgObjs.removeEventListenerById(self._e_event62);
        __o_rrpgObjs.removeEventListenerById(self._e_event61);
        __o_rrpgObjs.removeEventListenerById(self._e_event60);
        __o_rrpgObjs.removeEventListenerById(self._e_event59);
        __o_rrpgObjs.removeEventListenerById(self._e_event58);
        __o_rrpgObjs.removeEventListenerById(self._e_event57);
        __o_rrpgObjs.removeEventListenerById(self._e_event56);
        __o_rrpgObjs.removeEventListenerById(self._e_event55);
        __o_rrpgObjs.removeEventListenerById(self._e_event54);
        __o_rrpgObjs.removeEventListenerById(self._e_event53);
        __o_rrpgObjs.removeEventListenerById(self._e_event52);
        __o_rrpgObjs.removeEventListenerById(self._e_event51);
        __o_rrpgObjs.removeEventListenerById(self._e_event50);
        __o_rrpgObjs.removeEventListenerById(self._e_event49);
        __o_rrpgObjs.removeEventListenerById(self._e_event48);
        __o_rrpgObjs.removeEventListenerById(self._e_event47);
        __o_rrpgObjs.removeEventListenerById(self._e_event46);
        __o_rrpgObjs.removeEventListenerById(self._e_event45);
        __o_rrpgObjs.removeEventListenerById(self._e_event44);
        __o_rrpgObjs.removeEventListenerById(self._e_event43);
        __o_rrpgObjs.removeEventListenerById(self._e_event42);
        __o_rrpgObjs.removeEventListenerById(self._e_event41);
        __o_rrpgObjs.removeEventListenerById(self._e_event40);
        __o_rrpgObjs.removeEventListenerById(self._e_event39);
        __o_rrpgObjs.removeEventListenerById(self._e_event38);
        __o_rrpgObjs.removeEventListenerById(self._e_event37);
        __o_rrpgObjs.removeEventListenerById(self._e_event36);
        __o_rrpgObjs.removeEventListenerById(self._e_event35);
        __o_rrpgObjs.removeEventListenerById(self._e_event34);
        __o_rrpgObjs.removeEventListenerById(self._e_event33);
        __o_rrpgObjs.removeEventListenerById(self._e_event32);
        __o_rrpgObjs.removeEventListenerById(self._e_event31);
        __o_rrpgObjs.removeEventListenerById(self._e_event30);
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

        if self.flowLayout103 ~= nil then self.flowLayout103:destroy(); self.flowLayout103 = nil; end;
        if self.scrollBox10 ~= nil then self.scrollBox10:destroy(); self.scrollBox10 = nil; end;
        if self.nivelProfissao ~= nil then self.nivelProfissao:destroy(); self.nivelProfissao = nil; end;
        if self.flowPart2 ~= nil then self.flowPart2:destroy(); self.flowPart2 = nil; end;
        if self.nivelcar ~= nil then self.nivelcar:destroy(); self.nivelcar = nil; end;
        if self.extraBloqueio ~= nil then self.extraBloqueio:destroy(); self.extraBloqueio = nil; end;
        if self.flowLayout108 ~= nil then self.flowLayout108:destroy(); self.flowLayout108 = nil; end;
        if self.flowPart7 ~= nil then self.flowPart7:destroy(); self.flowPart7 = nil; end;
        if self.classefor ~= nil then self.classefor:destroy(); self.classefor = nil; end;
        if self.flowLayout45 ~= nil then self.flowLayout45:destroy(); self.flowLayout45 = nil; end;
        if self.totaldex ~= nil then self.totaldex:destroy(); self.totaldex = nil; end;
        if self.flowLayout124 ~= nil then self.flowLayout124:destroy(); self.flowLayout124 = nil; end;
        if self.edit27 ~= nil then self.edit27:destroy(); self.edit27 = nil; end;
        if self.totalMira ~= nil then self.totalMira:destroy(); self.totalMira = nil; end;
        if self.forVantagem5 ~= nil then self.forVantagem5:destroy(); self.forVantagem5 = nil; end;
        if self.popupAtributosDestreza ~= nil then self.popupAtributosDestreza:destroy(); self.popupAtributosDestreza = nil; end;
        if self.armaduraEsquiva ~= nil then self.armaduraEsquiva:destroy(); self.armaduraEsquiva = nil; end;
        if self.horzLine9 ~= nil then self.horzLine9:destroy(); self.horzLine9 = nil; end;
        if self.flowLayout121 ~= nil then self.flowLayout121:destroy(); self.flowLayout121 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.intVantagem4 ~= nil then self.intVantagem4:destroy(); self.intVantagem4 = nil; end;
        if self.flowLayout69 ~= nil then self.flowLayout69:destroy(); self.flowLayout69 = nil; end;
        if self.flowLayout97 ~= nil then self.flowLayout97:destroy(); self.flowLayout97 = nil; end;
        if self.extraEsquiva ~= nil then self.extraEsquiva:destroy(); self.extraEsquiva = nil; end;
        if self.extracon ~= nil then self.extracon:destroy(); self.extracon = nil; end;
        if self.richEdit10 ~= nil then self.richEdit10:destroy(); self.richEdit10 = nil; end;
        if self.extraAcerto ~= nil then self.extraAcerto:destroy(); self.extraAcerto = nil; end;
        if self.horzLine6 ~= nil then self.horzLine6:destroy(); self.horzLine6 = nil; end;
        if self.intVantagem3 ~= nil then self.intVantagem3:destroy(); self.intVantagem3 = nil; end;
        if self.dataLink5 ~= nil then self.dataLink5:destroy(); self.dataLink5 = nil; end;
        if self.xpRecebidoProfissao ~= nil then self.xpRecebidoProfissao:destroy(); self.xpRecebidoProfissao = nil; end;
        if self.treinoint ~= nil then self.treinoint:destroy(); self.treinoint = nil; end;
        if self.horzLine3 ~= nil then self.horzLine3:destroy(); self.horzLine3 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.dexMod ~= nil then self.dexMod:destroy(); self.dexMod = nil; end;
        if self.flowLayout67 ~= nil then self.flowLayout67:destroy(); self.flowLayout67 = nil; end;
        if self.sabVantagem4 ~= nil then self.sabVantagem4:destroy(); self.sabVantagem4 = nil; end;
        if self.flowPart10 ~= nil then self.flowPart10:destroy(); self.flowPart10 = nil; end;
        if self.tab1 ~= nil then self.tab1:destroy(); self.tab1 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.sabVantagem1 ~= nil then self.sabVantagem1:destroy(); self.sabVantagem1 = nil; end;
        if self.flowLayout6 ~= nil then self.flowLayout6:destroy(); self.flowLayout6 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.dexVantagem1 ~= nil then self.dexVantagem1:destroy(); self.dexVantagem1 = nil; end;
        if self.flowPart17 ~= nil then self.flowPart17:destroy(); self.flowPart17 = nil; end;
        if self.flowLayout52 ~= nil then self.flowLayout52:destroy(); self.flowLayout52 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.extrafor ~= nil then self.extrafor:destroy(); self.extrafor = nil; end;
        if self.nivelcon ~= nil then self.nivelcon:destroy(); self.nivelcon = nil; end;
        if self.flowLayout57 ~= nil then self.flowLayout57:destroy(); self.flowLayout57 = nil; end;
        if self.flowLayout14 ~= nil then self.flowLayout14:destroy(); self.flowLayout14 = nil; end;
        if self.edit31 ~= nil then self.edit31:destroy(); self.edit31 = nil; end;
        if self.carVantagem5 ~= nil then self.carVantagem5:destroy(); self.carVantagem5 = nil; end;
        if self.flowLayout8 ~= nil then self.flowLayout8:destroy(); self.flowLayout8 = nil; end;
        if self.classeint ~= nil then self.classeint:destroy(); self.classeint = nil; end;
        if self.conVantagem3 ~= nil then self.conVantagem3:destroy(); self.conVantagem3 = nil; end;
        if self.horzLine16 ~= nil then self.horzLine16:destroy(); self.horzLine16 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.flowLayout11 ~= nil then self.flowLayout11:destroy(); self.flowLayout11 = nil; end;
        if self.classeBloqueio ~= nil then self.classeBloqueio:destroy(); self.classeBloqueio = nil; end;
        if self.richEdit1 ~= nil then self.richEdit1:destroy(); self.richEdit1 = nil; end;
        if self.barraXpClasse ~= nil then self.barraXpClasse:destroy(); self.barraXpClasse = nil; end;
        if self.okButtonaba9 ~= nil then self.okButtonaba9:destroy(); self.okButtonaba9 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.pgcPrincipal ~= nil then self.pgcPrincipal:destroy(); self.pgcPrincipal = nil; end;
        if self.richEdit4 ~= nil then self.richEdit4:destroy(); self.richEdit4 = nil; end;
        if self.okButtonaba4 ~= nil then self.okButtonaba4:destroy(); self.okButtonaba4 = nil; end;
        if self.flowLayout70 ~= nil then self.flowLayout70:destroy(); self.flowLayout70 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.label25 ~= nil then self.label25:destroy(); self.label25 = nil; end;
        if self.treinodex ~= nil then self.treinodex:destroy(); self.treinodex = nil; end;
        if self.horzLine18 ~= nil then self.horzLine18:destroy(); self.horzLine18 = nil; end;
        if self.racacar ~= nil then self.racacar:destroy(); self.racacar = nil; end;
        if self.okButtonaba3 ~= nil then self.okButtonaba3:destroy(); self.okButtonaba3 = nil; end;
        if self.flowLayout28 ~= nil then self.flowLayout28:destroy(); self.flowLayout28 = nil; end;
        if self.flowLayout36 ~= nil then self.flowLayout36:destroy(); self.flowLayout36 = nil; end;
        if self.flowLayout75 ~= nil then self.flowLayout75:destroy(); self.flowLayout75 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.dataLink24 ~= nil then self.dataLink24:destroy(); self.dataLink24 = nil; end;
        if self.flowLayout136 ~= nil then self.flowLayout136:destroy(); self.flowLayout136 = nil; end;
        if self.editaba7 ~= nil then self.editaba7:destroy(); self.editaba7 = nil; end;
        if self.popupExperienciaClasse ~= nil then self.popupExperienciaClasse:destroy(); self.popupExperienciaClasse = nil; end;
        if self.flowLayout84 ~= nil then self.flowLayout84:destroy(); self.flowLayout84 = nil; end;
        if self.basecon ~= nil then self.basecon:destroy(); self.basecon = nil; end;
        if self.flowLayout141 ~= nil then self.flowLayout141:destroy(); self.flowLayout141 = nil; end;
        if self.flowLayout23 ~= nil then self.flowLayout23:destroy(); self.flowLayout23 = nil; end;
        if self.flowLayout33 ~= nil then self.flowLayout33:destroy(); self.flowLayout33 = nil; end;
        if self.armaAcerto ~= nil then self.armaAcerto:destroy(); self.armaAcerto = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.flowLayout131 ~= nil then self.flowLayout131:destroy(); self.flowLayout131 = nil; end;
        if self.flowLayout83 ~= nil then self.flowLayout83:destroy(); self.flowLayout83 = nil; end;
        if self.flowLayout146 ~= nil then self.flowLayout146:destroy(); self.flowLayout146 = nil; end;
        if self.classeMira ~= nil then self.classeMira:destroy(); self.classeMira = nil; end;
        if self.dataLink15 ~= nil then self.dataLink15:destroy(); self.dataLink15 = nil; end;
        if self.popupaba1 ~= nil then self.popupaba1:destroy(); self.popupaba1 = nil; end;
        if self.abaVaziaaba4 ~= nil then self.abaVaziaaba4:destroy(); self.abaVaziaaba4 = nil; end;
        if self.popupAtributos ~= nil then self.popupAtributos:destroy(); self.popupAtributos = nil; end;
        if self.rectangle17 ~= nil then self.rectangle17:destroy(); self.rectangle17 = nil; end;
        if self.flowLayout116 ~= nil then self.flowLayout116:destroy(); self.flowLayout116 = nil; end;
        if self.flowLayout100 ~= nil then self.flowLayout100:destroy(); self.flowLayout100 = nil; end;
        if self.dataLink12 ~= nil then self.dataLink12:destroy(); self.dataLink12 = nil; end;
        if self.flowLayout39 ~= nil then self.flowLayout39:destroy(); self.flowLayout39 = nil; end;
        if self.multiplicadorfor ~= nil then self.multiplicadorfor:destroy(); self.multiplicadorfor = nil; end;
        if self.nivelClasse ~= nil then self.nivelClasse:destroy(); self.nivelClasse = nil; end;
        if self.rectangle12 ~= nil then self.rectangle12:destroy(); self.rectangle12 = nil; end;
        if self.rectangle20 ~= nil then self.rectangle20:destroy(); self.rectangle20 = nil; end;
        if self.flowPart4 ~= nil then self.flowPart4:destroy(); self.flowPart4 = nil; end;
        if self.intMod ~= nil then self.intMod:destroy(); self.intMod = nil; end;
        if self.rectangle19 ~= nil then self.rectangle19:destroy(); self.rectangle19 = nil; end;
        if self.baseBloqueio ~= nil then self.baseBloqueio:destroy(); self.baseBloqueio = nil; end;
        if self.flowLayout40 ~= nil then self.flowLayout40:destroy(); self.flowLayout40 = nil; end;
        if self.flowPart9 ~= nil then self.flowPart9:destroy(); self.flowPart9 = nil; end;
        if self.edit22 ~= nil then self.edit22:destroy(); self.edit22 = nil; end;
        if self.MiraMod ~= nil then self.MiraMod:destroy(); self.MiraMod = nil; end;
        if self.flowLayout47 ~= nil then self.flowLayout47:destroy(); self.flowLayout47 = nil; end;
        if self.racafor ~= nil then self.racafor:destroy(); self.racafor = nil; end;
        if self.flowLayout122 ~= nil then self.flowLayout122:destroy(); self.flowLayout122 = nil; end;
        if self.edit25 ~= nil then self.edit25:destroy(); self.edit25 = nil; end;
        if self.armaduraMira ~= nil then self.armaduraMira:destroy(); self.armaduraMira = nil; end;
        if self.flowLayout94 ~= nil then self.flowLayout94:destroy(); self.flowLayout94 = nil; end;
        if self.destrezaBloqueio ~= nil then self.destrezaBloqueio:destroy(); self.destrezaBloqueio = nil; end;
        if self.xpRecebidoClasse ~= nil then self.xpRecebidoClasse:destroy(); self.xpRecebidoClasse = nil; end;
        if self.extraMira ~= nil then self.extraMira:destroy(); self.extraMira = nil; end;
        if self.edit28 ~= nil then self.edit28:destroy(); self.edit28 = nil; end;
        if self.flowLayout91 ~= nil then self.flowLayout91:destroy(); self.flowLayout91 = nil; end;
        if self.outrocar ~= nil then self.outrocar:destroy(); self.outrocar = nil; end;
        if self.forVantagem2 ~= nil then self.forVantagem2:destroy(); self.forVantagem2 = nil; end;
        if self.flowPart18 ~= nil then self.flowPart18:destroy(); self.flowPart18 = nil; end;
        if self.flowLayout128 ~= nil then self.flowLayout128:destroy(); self.flowLayout128 = nil; end;
        if self.flowLayout62 ~= nil then self.flowLayout62:destroy(); self.flowLayout62 = nil; end;
        if self.dataLink7 ~= nil then self.dataLink7:destroy(); self.dataLink7 = nil; end;
        if self.sabMod ~= nil then self.sabMod:destroy(); self.sabMod = nil; end;
        if self.extracar ~= nil then self.extracar:destroy(); self.extracar = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.sabVantagem2 ~= nil then self.sabVantagem2:destroy(); self.sabVantagem2 = nil; end;
        if self.flowLayout65 ~= nil then self.flowLayout65:destroy(); self.flowLayout65 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.flowLayout5 ~= nil then self.flowLayout5:destroy(); self.flowLayout5 = nil; end;
        if self.AcertoMod ~= nil then self.AcertoMod:destroy(); self.AcertoMod = nil; end;
        if self.flowPart12 ~= nil then self.flowPart12:destroy(); self.flowPart12 = nil; end;
        if self.dexVantagem4 ~= nil then self.dexVantagem4:destroy(); self.dexVantagem4 = nil; end;
        if self.edit39 ~= nil then self.edit39:destroy(); self.edit39 = nil; end;
        if self.dataLink9 ~= nil then self.dataLink9:destroy(); self.dataLink9 = nil; end;
        if self.flowLayout54 ~= nil then self.flowLayout54:destroy(); self.flowLayout54 = nil; end;
        if self.edit32 ~= nil then self.edit32:destroy(); self.edit32 = nil; end;
        if self.racadex ~= nil then self.racadex:destroy(); self.racadex = nil; end;
        if self.armaduraAcerto ~= nil then self.armaduraAcerto:destroy(); self.armaduraAcerto = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.flowLayout59 ~= nil then self.flowLayout59:destroy(); self.flowLayout59 = nil; end;
        if self.flowLayout16 ~= nil then self.flowLayout16:destroy(); self.flowLayout16 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.horzLine15 ~= nil then self.horzLine15:destroy(); self.horzLine15 = nil; end;
        if self.nivelsab ~= nil then self.nivelsab:destroy(); self.nivelsab = nil; end;
        if self.edit37 ~= nil then self.edit37:destroy(); self.edit37 = nil; end;
        if self.carVantagem3 ~= nil then self.carVantagem3:destroy(); self.carVantagem3 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.horzLine10 ~= nil then self.horzLine10:destroy(); self.horzLine10 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.flowLayout13 ~= nil then self.flowLayout13:destroy(); self.flowLayout13 = nil; end;
        if self.totalAcerto ~= nil then self.totalAcerto:destroy(); self.totalAcerto = nil; end;
        if self.richEdit3 ~= nil then self.richEdit3:destroy(); self.richEdit3 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.flowLayout18 ~= nil then self.flowLayout18:destroy(); self.flowLayout18 = nil; end;
        if self.richEdit6 ~= nil then self.richEdit6:destroy(); self.richEdit6 = nil; end;
        if self.conMod ~= nil then self.conMod:destroy(); self.conMod = nil; end;
        if self.okButtonaba6 ~= nil then self.okButtonaba6:destroy(); self.okButtonaba6 = nil; end;
        if self.flowLayout76 ~= nil then self.flowLayout76:destroy(); self.flowLayout76 = nil; end;
        if self.armaMira ~= nil then self.armaMira:destroy(); self.armaMira = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.label27 ~= nil then self.label27:destroy(); self.label27 = nil; end;
        if self.flowLayout139 ~= nil then self.flowLayout139:destroy(); self.flowLayout139 = nil; end;
        if self.editaba2 ~= nil then self.editaba2:destroy(); self.editaba2 = nil; end;
        if self.scrollBox9 ~= nil then self.scrollBox9:destroy(); self.scrollBox9 = nil; end;
        if self.popupaba10 ~= nil then self.popupaba10:destroy(); self.popupaba10 = nil; end;
        if self.popupExperienciaProfissao ~= nil then self.popupExperienciaProfissao:destroy(); self.popupExperienciaProfissao = nil; end;
        if self.flowLayout26 ~= nil then self.flowLayout26:destroy(); self.flowLayout26 = nil; end;
        if self.flowLayout34 ~= nil then self.flowLayout34:destroy(); self.flowLayout34 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.treinocon ~= nil then self.treinocon:destroy(); self.treinocon = nil; end;
        if self.dataLink22 ~= nil then self.dataLink22:destroy(); self.dataLink22 = nil; end;
        if self.flowLayout134 ~= nil then self.flowLayout134:destroy(); self.flowLayout134 = nil; end;
        if self.scrollBox4 ~= nil then self.scrollBox4:destroy(); self.scrollBox4 = nil; end;
        if self.editaba5 ~= nil then self.editaba5:destroy(); self.editaba5 = nil; end;
        if self.popupaba9 ~= nil then self.popupaba9:destroy(); self.popupaba9 = nil; end;
        if self.multiplicadorsab ~= nil then self.multiplicadorsab:destroy(); self.multiplicadorsab = nil; end;
        if self.flowLayout86 ~= nil then self.flowLayout86:destroy(); self.flowLayout86 = nil; end;
        if self.flowLayout143 ~= nil then self.flowLayout143:destroy(); self.flowLayout143 = nil; end;
        if self.flowLayout21 ~= nil then self.flowLayout21:destroy(); self.flowLayout21 = nil; end;
        if self.flowLayout31 ~= nil then self.flowLayout31:destroy(); self.flowLayout31 = nil; end;
        if self.scrollBox3 ~= nil then self.scrollBox3:destroy(); self.scrollBox3 = nil; end;
        if self.abaVaziaaba1 ~= nil then self.abaVaziaaba1:destroy(); self.abaVaziaaba1 = nil; end;
        if self.popupaba4 ~= nil then self.popupaba4:destroy(); self.popupaba4 = nil; end;
        if self.editaba8 ~= nil then self.editaba8:destroy(); self.editaba8 = nil; end;
        if self.classecon ~= nil then self.classecon:destroy(); self.classecon = nil; end;
        if self.flowLayout115 ~= nil then self.flowLayout115:destroy(); self.flowLayout115 = nil; end;
        if self.flowLayout105 ~= nil then self.flowLayout105:destroy(); self.flowLayout105 = nil; end;
        if self.dataLink17 ~= nil then self.dataLink17:destroy(); self.dataLink17 = nil; end;
        if self.BloqueioMod ~= nil then self.BloqueioMod:destroy(); self.BloqueioMod = nil; end;
        if self.popupaba3 ~= nil then self.popupaba3:destroy(); self.popupaba3 = nil; end;
        if self.abaVaziaaba6 ~= nil then self.abaVaziaaba6:destroy(); self.abaVaziaaba6 = nil; end;
        if self.rectangle25 ~= nil then self.rectangle25:destroy(); self.rectangle25 = nil; end;
        if self.rectangle11 ~= nil then self.rectangle11:destroy(); self.rectangle11 = nil; end;
        if self.flowLayout88 ~= nil then self.flowLayout88:destroy(); self.flowLayout88 = nil; end;
        if self.flowLayout102 ~= nil then self.flowLayout102:destroy(); self.flowLayout102 = nil; end;
        if self.flowLayout110 ~= nil then self.flowLayout110:destroy(); self.flowLayout110 = nil; end;
        if self.flowLayout48 ~= nil then self.flowLayout48:destroy(); self.flowLayout48 = nil; end;
        if self.flowPart1 ~= nil then self.flowPart1:destroy(); self.flowPart1 = nil; end;
        if self.totalcon ~= nil then self.totalcon:destroy(); self.totalcon = nil; end;
        if self.dataLink19 ~= nil then self.dataLink19:destroy(); self.dataLink19 = nil; end;
        if self.flowPart6 ~= nil then self.flowPart6:destroy(); self.flowPart6 = nil; end;
        if self.baseEsquiva ~= nil then self.baseEsquiva:destroy(); self.baseEsquiva = nil; end;
        if self.flowLayout42 ~= nil then self.flowLayout42:destroy(); self.flowLayout42 = nil; end;
        if self.nivelint ~= nil then self.nivelint:destroy(); self.nivelint = nil; end;
        if self.flowLayout127 ~= nil then self.flowLayout127:destroy(); self.flowLayout127 = nil; end;
        if self.edit20 ~= nil then self.edit20:destroy(); self.edit20 = nil; end;
        if self.flowLayout99 ~= nil then self.flowLayout99:destroy(); self.flowLayout99 = nil; end;
        if self.horzLine8 ~= nil then self.horzLine8:destroy(); self.horzLine8 = nil; end;
        if self.flowLayout120 ~= nil then self.flowLayout120:destroy(); self.flowLayout120 = nil; end;
        if self.intVantagem5 ~= nil then self.intVantagem5:destroy(); self.intVantagem5 = nil; end;
        if self.flowLayout96 ~= nil then self.flowLayout96:destroy(); self.flowLayout96 = nil; end;
        if self.forVantagem1 ~= nil then self.forVantagem1:destroy(); self.forVantagem1 = nil; end;
        if self.horzLine5 ~= nil then self.horzLine5:destroy(); self.horzLine5 = nil; end;
        if self.flowLayout93 ~= nil then self.flowLayout93:destroy(); self.flowLayout93 = nil; end;
        if self.horzLine2 ~= nil then self.horzLine2:destroy(); self.horzLine2 = nil; end;
        if self.flowLayout60 ~= nil then self.flowLayout60:destroy(); self.flowLayout60 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.outrosab ~= nil then self.outrosab:destroy(); self.outrosab = nil; end;
        if self.flowPart11 ~= nil then self.flowPart11:destroy(); self.flowPart11 = nil; end;
        if self.basefor ~= nil then self.basefor:destroy(); self.basefor = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.classeAcerto ~= nil then self.classeAcerto:destroy(); self.classeAcerto = nil; end;
        if self.flowLayout7 ~= nil then self.flowLayout7:destroy(); self.flowLayout7 = nil; end;
        if self.flowPart14 ~= nil then self.flowPart14:destroy(); self.flowPart14 = nil; end;
        if self.dexVantagem2 ~= nil then self.dexVantagem2:destroy(); self.dexVantagem2 = nil; end;
        if self.outrodex ~= nil then self.outrodex:destroy(); self.outrodex = nil; end;
        if self.flowLayout51 ~= nil then self.flowLayout51:destroy(); self.flowLayout51 = nil; end;
        if self.flowLayout2 ~= nil then self.flowLayout2:destroy(); self.flowLayout2 = nil; end;
        if self.conVantagem5 ~= nil then self.conVantagem5:destroy(); self.conVantagem5 = nil; end;
        if self.outrofor ~= nil then self.outrofor:destroy(); self.outrofor = nil; end;
        if self.flowLayout56 ~= nil then self.flowLayout56:destroy(); self.flowLayout56 = nil; end;
        if self.edit30 ~= nil then self.edit30:destroy(); self.edit30 = nil; end;
        if self.carVantagem4 ~= nil then self.carVantagem4:destroy(); self.carVantagem4 = nil; end;
        if self.flowLayout9 ~= nil then self.flowLayout9:destroy(); self.flowLayout9 = nil; end;
        if self.conVantagem2 ~= nil then self.conVantagem2:destroy(); self.conVantagem2 = nil; end;
        if self.horzLine17 ~= nil then self.horzLine17:destroy(); self.horzLine17 = nil; end;
        if self.flowLayout10 ~= nil then self.flowLayout10:destroy(); self.flowLayout10 = nil; end;
        if self.extrasab ~= nil then self.extrasab:destroy(); self.extrasab = nil; end;
        if self.edit35 ~= nil then self.edit35:destroy(); self.edit35 = nil; end;
        if self.carVantagem1 ~= nil then self.carVantagem1:destroy(); self.carVantagem1 = nil; end;
        if self.horzLine12 ~= nil then self.horzLine12:destroy(); self.horzLine12 = nil; end;
        if self.tabelaAtributosDestreza ~= nil then self.tabelaAtributosDestreza:destroy(); self.tabelaAtributosDestreza = nil; end;
        if self.richEdit5 ~= nil then self.richEdit5:destroy(); self.richEdit5 = nil; end;
        if self.okButtonaba5 ~= nil then self.okButtonaba5:destroy(); self.okButtonaba5 = nil; end;
        if self.flowLayout73 ~= nil then self.flowLayout73:destroy(); self.flowLayout73 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.label22 ~= nil then self.label22:destroy(); self.label22 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.armaBloqueio ~= nil then self.armaBloqueio:destroy(); self.armaBloqueio = nil; end;
        if self.racacon ~= nil then self.racacon:destroy(); self.racacon = nil; end;
        if self.horzLine19 ~= nil then self.horzLine19:destroy(); self.horzLine19 = nil; end;
        if self.richEdit8 ~= nil then self.richEdit8:destroy(); self.richEdit8 = nil; end;
        if self.flowLayout29 ~= nil then self.flowLayout29:destroy(); self.flowLayout29 = nil; end;
        if self.flowLayout74 ~= nil then self.flowLayout74:destroy(); self.flowLayout74 = nil; end;
        if self.popupMenuImagem ~= nil then self.popupMenuImagem:destroy(); self.popupMenuImagem = nil; end;
        if self.basedex ~= nil then self.basedex:destroy(); self.basedex = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.baseint ~= nil then self.baseint:destroy(); self.baseint = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.EsquivaMod ~= nil then self.EsquivaMod:destroy(); self.EsquivaMod = nil; end;
        if self.dataLink25 ~= nil then self.dataLink25:destroy(); self.dataLink25 = nil; end;
        if self.flowLayout137 ~= nil then self.flowLayout137:destroy(); self.flowLayout137 = nil; end;
        if self.flowLayout85 ~= nil then self.flowLayout85:destroy(); self.flowLayout85 = nil; end;
        if self.flowLayout140 ~= nil then self.flowLayout140:destroy(); self.flowLayout140 = nil; end;
        if self.abaVaziaaba9 ~= nil then self.abaVaziaaba9:destroy(); self.abaVaziaaba9 = nil; end;
        if self.flowLayout24 ~= nil then self.flowLayout24:destroy(); self.flowLayout24 = nil; end;
        if self.flowLayout32 ~= nil then self.flowLayout32:destroy(); self.flowLayout32 = nil; end;
        if self.flowLayout79 ~= nil then self.flowLayout79:destroy(); self.flowLayout79 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.dataLink20 ~= nil then self.dataLink20:destroy(); self.dataLink20 = nil; end;
        if self.flowLayout132 ~= nil then self.flowLayout132:destroy(); self.flowLayout132 = nil; end;
        if self.scrollBox6 ~= nil then self.scrollBox6:destroy(); self.scrollBox6 = nil; end;
        if self.flowLayout80 ~= nil then self.flowLayout80:destroy(); self.flowLayout80 = nil; end;
        if self.flowLayout118 ~= nil then self.flowLayout118:destroy(); self.flowLayout118 = nil; end;
        if self.flowLayout145 ~= nil then self.flowLayout145:destroy(); self.flowLayout145 = nil; end;
        if self.dataLink14 ~= nil then self.dataLink14:destroy(); self.dataLink14 = nil; end;
        if self.abaVaziaaba3 ~= nil then self.abaVaziaaba3:destroy(); self.abaVaziaaba3 = nil; end;
        if self.popupaba6 ~= nil then self.popupaba6:destroy(); self.popupaba6 = nil; end;
        if self.basecar ~= nil then self.basecar:destroy(); self.basecar = nil; end;
        if self.multiplicadorint ~= nil then self.multiplicadorint:destroy(); self.multiplicadorint = nil; end;
        if self.flowLayout117 ~= nil then self.flowLayout117:destroy(); self.flowLayout117 = nil; end;
        if self.flowLayout107 ~= nil then self.flowLayout107:destroy(); self.flowLayout107 = nil; end;
        if self.rectangle14 ~= nil then self.rectangle14:destroy(); self.rectangle14 = nil; end;
        if self.dataLink11 ~= nil then self.dataLink11:destroy(); self.dataLink11 = nil; end;
        if self.flowLayout38 ~= nil then self.flowLayout38:destroy(); self.flowLayout38 = nil; end;
        if self.rectangle26 ~= nil then self.rectangle26:destroy(); self.rectangle26 = nil; end;
        if self.okButtonaba10 ~= nil then self.okButtonaba10:destroy(); self.okButtonaba10 = nil; end;
        if self.rectangle23 ~= nil then self.rectangle23:destroy(); self.rectangle23 = nil; end;
        if self.rectangle13 ~= nil then self.rectangle13:destroy(); self.rectangle13 = nil; end;
        if self.flowLayout112 ~= nil then self.flowLayout112:destroy(); self.flowLayout112 = nil; end;
        if self.multiplicadorcon ~= nil then self.multiplicadorcon:destroy(); self.multiplicadorcon = nil; end;
        if self.scrollBox11 ~= nil then self.scrollBox11:destroy(); self.scrollBox11 = nil; end;
        if self.totalEsquiva ~= nil then self.totalEsquiva:destroy(); self.totalEsquiva = nil; end;
        if self.multiplicadorAcerto ~= nil then self.multiplicadorAcerto:destroy(); self.multiplicadorAcerto = nil; end;
        if self.flowPart3 ~= nil then self.flowPart3:destroy(); self.flowPart3 = nil; end;
        if self.flowLayout109 ~= nil then self.flowLayout109:destroy(); self.flowLayout109 = nil; end;
        if self.baseMira ~= nil then self.baseMira:destroy(); self.baseMira = nil; end;
        if self.flowLayout41 ~= nil then self.flowLayout41:destroy(); self.flowLayout41 = nil; end;
        if self.flowPart8 ~= nil then self.flowPart8:destroy(); self.flowPart8 = nil; end;
        if self.multiplicadorcar ~= nil then self.multiplicadorcar:destroy(); self.multiplicadorcar = nil; end;
        if self.edit23 ~= nil then self.edit23:destroy(); self.edit23 = nil; end;
        if self.extraint ~= nil then self.extraint:destroy(); self.extraint = nil; end;
        if self.flowLayout44 ~= nil then self.flowLayout44:destroy(); self.flowLayout44 = nil; end;
        if self.treinosab ~= nil then self.treinosab:destroy(); self.treinosab = nil; end;
        if self.flowLayout125 ~= nil then self.flowLayout125:destroy(); self.flowLayout125 = nil; end;
        if self.edit26 ~= nil then self.edit26:destroy(); self.edit26 = nil; end;
        if self.armaEsquiva ~= nil then self.armaEsquiva:destroy(); self.armaEsquiva = nil; end;
        if self.totalBloqueio ~= nil then self.totalBloqueio:destroy(); self.totalBloqueio = nil; end;
        if self.forVantagem4 ~= nil then self.forVantagem4:destroy(); self.forVantagem4 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.edit29 ~= nil then self.edit29:destroy(); self.edit29 = nil; end;
        if self.flowLayout68 ~= nil then self.flowLayout68:destroy(); self.flowLayout68 = nil; end;
        if self.flowLayout90 ~= nil then self.flowLayout90:destroy(); self.flowLayout90 = nil; end;
        if self.forVantagem3 ~= nil then self.forVantagem3:destroy(); self.forVantagem3 = nil; end;
        if self.horzLine20 ~= nil then self.horzLine20:destroy(); self.horzLine20 = nil; end;
        if self.flowPart19 ~= nil then self.flowPart19:destroy(); self.flowPart19 = nil; end;
        if self.destrezaEsquiva ~= nil then self.destrezaEsquiva:destroy(); self.destrezaEsquiva = nil; end;
        if self.horzLine7 ~= nil then self.horzLine7:destroy(); self.horzLine7 = nil; end;
        if self.outroint ~= nil then self.outroint:destroy(); self.outroint = nil; end;
        if self.extradex ~= nil then self.extradex:destroy(); self.extradex = nil; end;
        if self.treinocar ~= nil then self.treinocar:destroy(); self.treinocar = nil; end;
        if self.flowLayout63 ~= nil then self.flowLayout63:destroy(); self.flowLayout63 = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.intVantagem2 ~= nil then self.intVantagem2:destroy(); self.intVantagem2 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.sabVantagem5 ~= nil then self.sabVantagem5:destroy(); self.sabVantagem5 = nil; end;
        if self.flowLayout66 ~= nil then self.flowLayout66:destroy(); self.flowLayout66 = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.forMod ~= nil then self.forMod:destroy(); self.forMod = nil; end;
        if self.flowPart13 ~= nil then self.flowPart13:destroy(); self.flowPart13 = nil; end;
        if self.dexVantagem5 ~= nil then self.dexVantagem5:destroy(); self.dexVantagem5 = nil; end;
        if self.baseAcerto ~= nil then self.baseAcerto:destroy(); self.baseAcerto = nil; end;
        if self.edit38 ~= nil then self.edit38:destroy(); self.edit38 = nil; end;
        if self.flowLayout1 ~= nil then self.flowLayout1:destroy(); self.flowLayout1 = nil; end;
        if self.flowPart16 ~= nil then self.flowPart16:destroy(); self.flowPart16 = nil; end;
        if self.flowLayout53 ~= nil then self.flowLayout53:destroy(); self.flowLayout53 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.flowLayout58 ~= nil then self.flowLayout58:destroy(); self.flowLayout58 = nil; end;
        if self.flowLayout15 ~= nil then self.flowLayout15:destroy(); self.flowLayout15 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.racasab ~= nil then self.racasab:destroy(); self.racasab = nil; end;
        if self.edit36 ~= nil then self.edit36:destroy(); self.edit36 = nil; end;
        if self.carVantagem2 ~= nil then self.carVantagem2:destroy(); self.carVantagem2 = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.horzLine11 ~= nil then self.horzLine11:destroy(); self.horzLine11 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.flowLayout12 ~= nil then self.flowLayout12:destroy(); self.flowLayout12 = nil; end;
        if self.okButtonaba8 ~= nil then self.okButtonaba8:destroy(); self.okButtonaba8 = nil; end;
        if self.label21 ~= nil then self.label21:destroy(); self.label21 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.classesab ~= nil then self.classesab:destroy(); self.classesab = nil; end;
        if self.richEdit7 ~= nil then self.richEdit7:destroy(); self.richEdit7 = nil; end;
        if self.okButtonaba7 ~= nil then self.okButtonaba7:destroy(); self.okButtonaba7 = nil; end;
        if self.flowLayout71 ~= nil then self.flowLayout71:destroy(); self.flowLayout71 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.rectangle9 ~= nil then self.rectangle9:destroy(); self.rectangle9 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.label24 ~= nil then self.label24:destroy(); self.label24 = nil; end;
        if self.editaba3 ~= nil then self.editaba3:destroy(); self.editaba3 = nil; end;
        if self.okButtonaba2 ~= nil then self.okButtonaba2:destroy(); self.okButtonaba2 = nil; end;
        if self.flowLayout27 ~= nil then self.flowLayout27:destroy(); self.flowLayout27 = nil; end;
        if self.flowLayout37 ~= nil then self.flowLayout37:destroy(); self.flowLayout37 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.flowLayout135 ~= nil then self.flowLayout135:destroy(); self.flowLayout135 = nil; end;
        if self.dataLink23 ~= nil then self.dataLink23:destroy(); self.dataLink23 = nil; end;
        if self.scrollBox5 ~= nil then self.scrollBox5:destroy(); self.scrollBox5 = nil; end;
        if self.editaba6 ~= nil then self.editaba6:destroy(); self.editaba6 = nil; end;
        if self.flowLayout87 ~= nil then self.flowLayout87:destroy(); self.flowLayout87 = nil; end;
        if self.flowLayout142 ~= nil then self.flowLayout142:destroy(); self.flowLayout142 = nil; end;
        if self.flowLayout22 ~= nil then self.flowLayout22:destroy(); self.flowLayout22 = nil; end;
        if self.flowLayout30 ~= nil then self.flowLayout30:destroy(); self.flowLayout30 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.flowLayout130 ~= nil then self.flowLayout130:destroy(); self.flowLayout130 = nil; end;
        if self.popupaba5 ~= nil then self.popupaba5:destroy(); self.popupaba5 = nil; end;
        if self.editaba9 ~= nil then self.editaba9:destroy(); self.editaba9 = nil; end;
        if self.totalfor ~= nil then self.totalfor:destroy(); self.totalfor = nil; end;
        if self.fundoDaImagem ~= nil then self.fundoDaImagem:destroy(); self.fundoDaImagem = nil; end;
        if self.flowLayout82 ~= nil then self.flowLayout82:destroy(); self.flowLayout82 = nil; end;
        if self.flowLayout104 ~= nil then self.flowLayout104:destroy(); self.flowLayout104 = nil; end;
        if self.flowLayout147 ~= nil then self.flowLayout147:destroy(); self.flowLayout147 = nil; end;
        if self.dataLink16 ~= nil then self.dataLink16:destroy(); self.dataLink16 = nil; end;
        if self.multiplicadorMira ~= nil then self.multiplicadorMira:destroy(); self.multiplicadorMira = nil; end;
        if self.abaVaziaaba5 ~= nil then self.abaVaziaaba5:destroy(); self.abaVaziaaba5 = nil; end;
        if self.rectangle24 ~= nil then self.rectangle24:destroy(); self.rectangle24 = nil; end;
        if self.rectangle16 ~= nil then self.rectangle16:destroy(); self.rectangle16 = nil; end;
        if self.flowLayout89 ~= nil then self.flowLayout89:destroy(); self.flowLayout89 = nil; end;
        if self.flowLayout101 ~= nil then self.flowLayout101:destroy(); self.flowLayout101 = nil; end;
        if self.flowLayout111 ~= nil then self.flowLayout111:destroy(); self.flowLayout111 = nil; end;
        if self.dataLink13 ~= nil then self.dataLink13:destroy(); self.dataLink13 = nil; end;
        if self.flowLayout49 ~= nil then self.flowLayout49:destroy(); self.flowLayout49 = nil; end;
        if self.classeEsquiva ~= nil then self.classeEsquiva:destroy(); self.classeEsquiva = nil; end;
        if self.rectangle21 ~= nil then self.rectangle21:destroy(); self.rectangle21 = nil; end;
        if self.dataLink18 ~= nil then self.dataLink18:destroy(); self.dataLink18 = nil; end;
        if self.flowPart5 ~= nil then self.flowPart5:destroy(); self.flowPart5 = nil; end;
        if self.rectangle18 ~= nil then self.rectangle18:destroy(); self.rectangle18 = nil; end;
        if self.flowLayout43 ~= nil then self.flowLayout43:destroy(); self.flowLayout43 = nil; end;
        if self.flowLayout126 ~= nil then self.flowLayout126:destroy(); self.flowLayout126 = nil; end;
        if self.edit21 ~= nil then self.edit21:destroy(); self.edit21 = nil; end;
        if self.carMod ~= nil then self.carMod:destroy(); self.carMod = nil; end;
        if self.flowLayout98 ~= nil then self.flowLayout98:destroy(); self.flowLayout98 = nil; end;
        if self.flowLayout46 ~= nil then self.flowLayout46:destroy(); self.flowLayout46 = nil; end;
        if self.multiplicadordex ~= nil then self.multiplicadordex:destroy(); self.multiplicadordex = nil; end;
        if self.comboBox1 ~= nil then self.comboBox1:destroy(); self.comboBox1 = nil; end;
        if self.armaduraBloqueio ~= nil then self.armaduraBloqueio:destroy(); self.armaduraBloqueio = nil; end;
        if self.edit24 ~= nil then self.edit24:destroy(); self.edit24 = nil; end;
        if self.flowLayout123 ~= nil then self.flowLayout123:destroy(); self.flowLayout123 = nil; end;
        if self.flowLayout95 ~= nil then self.flowLayout95:destroy(); self.flowLayout95 = nil; end;
        if self.horzLine4 ~= nil then self.horzLine4:destroy(); self.horzLine4 = nil; end;
        if self.intVantagem1 ~= nil then self.intVantagem1:destroy(); self.intVantagem1 = nil; end;
        if self.flowLayout92 ~= nil then self.flowLayout92:destroy(); self.flowLayout92 = nil; end;
        if self.horzLine1 ~= nil then self.horzLine1:destroy(); self.horzLine1 = nil; end;
        if self.flowLayout129 ~= nil then self.flowLayout129:destroy(); self.flowLayout129 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.flowLayout61 ~= nil then self.flowLayout61:destroy(); self.flowLayout61 = nil; end;
        if self.dataLink6 ~= nil then self.dataLink6:destroy(); self.dataLink6 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.sabVantagem3 ~= nil then self.sabVantagem3:destroy(); self.sabVantagem3 = nil; end;
        if self.flowLayout64 ~= nil then self.flowLayout64:destroy(); self.flowLayout64 = nil; end;
        if self.flowLayout4 ~= nil then self.flowLayout4:destroy(); self.flowLayout4 = nil; end;
        if self.flowPart15 ~= nil then self.flowPart15:destroy(); self.flowPart15 = nil; end;
        if self.dexVantagem3 ~= nil then self.dexVantagem3:destroy(); self.dexVantagem3 = nil; end;
        if self.flowLayout50 ~= nil then self.flowLayout50:destroy(); self.flowLayout50 = nil; end;
        if self.dataLink8 ~= nil then self.dataLink8:destroy(); self.dataLink8 = nil; end;
        if self.flowLayout3 ~= nil then self.flowLayout3:destroy(); self.flowLayout3 = nil; end;
        if self.nivelfor ~= nil then self.nivelfor:destroy(); self.nivelfor = nil; end;
        if self.basesab ~= nil then self.basesab:destroy(); self.basesab = nil; end;
        if self.conVantagem4 ~= nil then self.conVantagem4:destroy(); self.conVantagem4 = nil; end;
        if self.abaVaziaaba10 ~= nil then self.abaVaziaaba10:destroy(); self.abaVaziaaba10 = nil; end;
        if self.flowLayout55 ~= nil then self.flowLayout55:destroy(); self.flowLayout55 = nil; end;
        if self.totalsab ~= nil then self.totalsab:destroy(); self.totalsab = nil; end;
        if self.edit33 ~= nil then self.edit33:destroy(); self.edit33 = nil; end;
        if self.treinofor ~= nil then self.treinofor:destroy(); self.treinofor = nil; end;
        if self.conVantagem1 ~= nil then self.conVantagem1:destroy(); self.conVantagem1 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.flowLayout17 ~= nil then self.flowLayout17:destroy(); self.flowLayout17 = nil; end;
        if self.barraXpProfissao ~= nil then self.barraXpProfissao:destroy(); self.barraXpProfissao = nil; end;
        if self.horzLine14 ~= nil then self.horzLine14:destroy(); self.horzLine14 = nil; end;
        if self.edit34 ~= nil then self.edit34:destroy(); self.edit34 = nil; end;
        if self.editaba10 ~= nil then self.editaba10:destroy(); self.editaba10 = nil; end;
        if self.horzLine13 ~= nil then self.horzLine13:destroy(); self.horzLine13 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.richEdit2 ~= nil then self.richEdit2:destroy(); self.richEdit2 = nil; end;
        if self.totalcar ~= nil then self.totalcar:destroy(); self.totalcar = nil; end;
        if self.racaint ~= nil then self.racaint:destroy(); self.racaint = nil; end;
        if self.flowLayout72 ~= nil then self.flowLayout72:destroy(); self.flowLayout72 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.label23 ~= nil then self.label23:destroy(); self.label23 = nil; end;
        if self.flowLayout19 ~= nil then self.flowLayout19:destroy(); self.flowLayout19 = nil; end;
        if self.classedex ~= nil then self.classedex:destroy(); self.classedex = nil; end;
        if self.richEdit9 ~= nil then self.richEdit9:destroy(); self.richEdit9 = nil; end;
        if self.totalint ~= nil then self.totalint:destroy(); self.totalint = nil; end;
        if self.flowLayout77 ~= nil then self.flowLayout77:destroy(); self.flowLayout77 = nil; end;
        if self.multiplicadorEsquiva ~= nil then self.multiplicadorEsquiva:destroy(); self.multiplicadorEsquiva = nil; end;
        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.destrezaMira ~= nil then self.destrezaMira:destroy(); self.destrezaMira = nil; end;
        if self.label26 ~= nil then self.label26:destroy(); self.label26 = nil; end;
        if self.dataLink26 ~= nil then self.dataLink26:destroy(); self.dataLink26 = nil; end;
        if self.tabelaAtributos ~= nil then self.tabelaAtributos:destroy(); self.tabelaAtributos = nil; end;
        if self.outrocon ~= nil then self.outrocon:destroy(); self.outrocon = nil; end;
        if self.niveldex ~= nil then self.niveldex:destroy(); self.niveldex = nil; end;
        if self.classecar ~= nil then self.classecar:destroy(); self.classecar = nil; end;
        if self.flowLayout138 ~= nil then self.flowLayout138:destroy(); self.flowLayout138 = nil; end;
        if self.editaba1 ~= nil then self.editaba1:destroy(); self.editaba1 = nil; end;
        if self.okButtonaba1 ~= nil then self.okButtonaba1:destroy(); self.okButtonaba1 = nil; end;
        if self.flowLayout25 ~= nil then self.flowLayout25:destroy(); self.flowLayout25 = nil; end;
        if self.flowLayout35 ~= nil then self.flowLayout35:destroy(); self.flowLayout35 = nil; end;
        if self.flowLayout78 ~= nil then self.flowLayout78:destroy(); self.flowLayout78 = nil; end;
        if self.flowLayout133 ~= nil then self.flowLayout133:destroy(); self.flowLayout133 = nil; end;
        if self.dataLink21 ~= nil then self.dataLink21:destroy(); self.dataLink21 = nil; end;
        if self.editaba4 ~= nil then self.editaba4:destroy(); self.editaba4 = nil; end;
        if self.scrollBox7 ~= nil then self.scrollBox7:destroy(); self.scrollBox7 = nil; end;
        if self.scrollBox8 ~= nil then self.scrollBox8:destroy(); self.scrollBox8 = nil; end;
        if self.abaVaziaaba8 ~= nil then self.abaVaziaaba8:destroy(); self.abaVaziaaba8 = nil; end;
        if self.popupaba8 ~= nil then self.popupaba8:destroy(); self.popupaba8 = nil; end;
        if self.flowLayout81 ~= nil then self.flowLayout81:destroy(); self.flowLayout81 = nil; end;
        if self.flowLayout119 ~= nil then self.flowLayout119:destroy(); self.flowLayout119 = nil; end;
        if self.flowLayout144 ~= nil then self.flowLayout144:destroy(); self.flowLayout144 = nil; end;
        if self.flowLayout20 ~= nil then self.flowLayout20:destroy(); self.flowLayout20 = nil; end;
        if self.scrollBox2 ~= nil then self.scrollBox2:destroy(); self.scrollBox2 = nil; end;
        if self.destrezaAcerto ~= nil then self.destrezaAcerto:destroy(); self.destrezaAcerto = nil; end;
        if self.abaVaziaaba2 ~= nil then self.abaVaziaaba2:destroy(); self.abaVaziaaba2 = nil; end;
        if self.popupaba7 ~= nil then self.popupaba7:destroy(); self.popupaba7 = nil; end;
        if self.multiplicadorBloqueio ~= nil then self.multiplicadorBloqueio:destroy(); self.multiplicadorBloqueio = nil; end;
        if self.rectangle15 ~= nil then self.rectangle15:destroy(); self.rectangle15 = nil; end;
        if self.flowLayout114 ~= nil then self.flowLayout114:destroy(); self.flowLayout114 = nil; end;
        if self.flowLayout106 ~= nil then self.flowLayout106:destroy(); self.flowLayout106 = nil; end;
        if self.dataLink10 ~= nil then self.dataLink10:destroy(); self.dataLink10 = nil; end;
        if self.popupaba2 ~= nil then self.popupaba2:destroy(); self.popupaba2 = nil; end;
        if self.abaVaziaaba7 ~= nil then self.abaVaziaaba7:destroy(); self.abaVaziaaba7 = nil; end;
        if self.rectangle22 ~= nil then self.rectangle22:destroy(); self.rectangle22 = nil; end;
        if self.rectangle10 ~= nil then self.rectangle10:destroy(); self.rectangle10 = nil; end;
        if self.flowLayout113 ~= nil then self.flowLayout113:destroy(); self.flowLayout113 = nil; end;
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
