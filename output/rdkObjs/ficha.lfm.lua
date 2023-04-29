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

    obj.botao1 = GUI.fromHandle(_obj_newObject("button"));
    obj.botao1:setParent(obj.flowLayout1);
    obj.botao1:setName("botao1");
    obj.botao1:setText("Botao1");

    obj.button1 = GUI.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.flowLayout1);
    obj.button1:setText("Botao2");
    obj.button1:setName("button1");

    obj.button2 = GUI.fromHandle(_obj_newObject("button"));
    obj.button2:setParent(obj.flowLayout1);
    obj.button2:setText("Botao3");
    obj.button2:setName("button2");

    obj.r = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.r:setParent(obj.flowLayout1);
    obj.r:setName("r");
    obj.r:setColor("blue");
    obj.r:setHeight(10);
    obj.r:setWidth(10);

    obj.flowPart1 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart1:setParent(obj.flowLayout1);
    obj.flowPart1:setMinWidth(1050);
    obj.flowPart1:setMinScaledWidth(265);
    obj.flowPart1:setMaxWidth(1050);
    obj.flowPart1:setName("flowPart1");

    obj.popupAtributos = GUI.fromHandle(_obj_newObject("popup"));
    obj.popupAtributos:setParent(obj.flowPart1);
    obj.popupAtributos:setName("popupAtributos");
    obj.popupAtributos:setAlign("client");

    obj.tabelaAtributos = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.tabelaAtributos:setParent(obj.popupAtributos);
    obj.tabelaAtributos:setAlign("client");
    obj.tabelaAtributos:setAutoHeight(true);
    obj.tabelaAtributos:setMinWidth(1040);
    obj.tabelaAtributos:setMinScaledWidth(260);
    obj.tabelaAtributos:setHorzAlign("center");
    obj.tabelaAtributos:setMaxControlsPerLine(10);
    obj.tabelaAtributos:setName("tabelaAtributos");

    obj.flowLayout2 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout2:setParent(obj.tabelaAtributos);
    obj.flowLayout2:setName("flowLayout2");
    obj.flowLayout2:setWidth(100);
    obj.flowLayout2:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.flowLayout2);
    obj.edit1:setText("");
    lfm_setPropAsString(obj.edit1, "fontStyle",  "bold");
    obj.edit1:setName("edit1");
    obj.edit1:setReadOnly(true);
    obj.edit1:setCanFocus(false);
    obj.edit1:setHorzTextAlign("center");
    obj.edit1:setAlign("client");

    obj.flowLayout3 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout3:setParent(obj.tabelaAtributos);
    obj.flowLayout3:setName("flowLayout3");
    obj.flowLayout3:setWidth(100);
    obj.flowLayout3:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.flowLayout3);
    obj.edit2:setText("Nível");
    lfm_setPropAsString(obj.edit2, "fontStyle",  "bold");
    obj.edit2:setName("edit2");
    obj.edit2:setReadOnly(true);
    obj.edit2:setCanFocus(false);
    obj.edit2:setHorzTextAlign("center");
    obj.edit2:setAlign("client");

    obj.flowLayout4 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout4:setParent(obj.tabelaAtributos);
    obj.flowLayout4:setName("flowLayout4");
    obj.flowLayout4:setWidth(100);
    obj.flowLayout4:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.flowLayout4);
    obj.edit3:setText("Classe");
    lfm_setPropAsString(obj.edit3, "fontStyle",  "bold");
    obj.edit3:setName("edit3");
    obj.edit3:setReadOnly(true);
    obj.edit3:setCanFocus(false);
    obj.edit3:setHorzTextAlign("center");
    obj.edit3:setAlign("client");

    obj.flowLayout5 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout5:setParent(obj.tabelaAtributos);
    obj.flowLayout5:setName("flowLayout5");
    obj.flowLayout5:setWidth(100);
    obj.flowLayout5:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.flowLayout5);
    obj.edit4:setText("Raça");
    lfm_setPropAsString(obj.edit4, "fontStyle",  "bold");
    obj.edit4:setName("edit4");
    obj.edit4:setReadOnly(true);
    obj.edit4:setCanFocus(false);
    obj.edit4:setHorzTextAlign("center");
    obj.edit4:setAlign("client");

    obj.flowLayout6 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout6:setParent(obj.tabelaAtributos);
    obj.flowLayout6:setName("flowLayout6");
    obj.flowLayout6:setWidth(100);
    obj.flowLayout6:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.flowLayout6);
    obj.edit5:setText("Treino");
    lfm_setPropAsString(obj.edit5, "fontStyle",  "bold");
    obj.edit5:setName("edit5");
    obj.edit5:setReadOnly(true);
    obj.edit5:setCanFocus(false);
    obj.edit5:setHorzTextAlign("center");
    obj.edit5:setAlign("client");

    obj.flowLayout7 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout7:setParent(obj.tabelaAtributos);
    obj.flowLayout7:setName("flowLayout7");
    obj.flowLayout7:setWidth(100);
    obj.flowLayout7:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.flowLayout7);
    obj.edit6:setText("Outro");
    lfm_setPropAsString(obj.edit6, "fontStyle",  "bold");
    obj.edit6:setName("edit6");
    obj.edit6:setReadOnly(true);
    obj.edit6:setCanFocus(false);
    obj.edit6:setHorzTextAlign("center");
    obj.edit6:setAlign("client");

    obj.flowLayout8 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout8:setParent(obj.tabelaAtributos);
    obj.flowLayout8:setName("flowLayout8");
    obj.flowLayout8:setWidth(100);
    obj.flowLayout8:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.flowLayout8);
    obj.edit7:setText("Base");
    lfm_setPropAsString(obj.edit7, "fontStyle",  "bold");
    obj.edit7:setName("edit7");
    obj.edit7:setReadOnly(true);
    obj.edit7:setCanFocus(false);
    obj.edit7:setHorzTextAlign("center");
    obj.edit7:setAlign("client");

    obj.flowLayout9 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout9:setParent(obj.tabelaAtributos);
    obj.flowLayout9:setName("flowLayout9");
    obj.flowLayout9:setWidth(100);
    obj.flowLayout9:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.flowLayout9);
    obj.edit8:setText("Multiplicador");
    lfm_setPropAsString(obj.edit8, "fontStyle",  "bold");
    obj.edit8:setName("edit8");
    obj.edit8:setReadOnly(true);
    obj.edit8:setCanFocus(false);
    obj.edit8:setHorzTextAlign("center");
    obj.edit8:setAlign("client");

    obj.flowLayout10 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout10:setParent(obj.tabelaAtributos);
    obj.flowLayout10:setName("flowLayout10");
    obj.flowLayout10:setWidth(100);
    obj.flowLayout10:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit9 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.flowLayout10);
    obj.edit9:setText("Extra");
    lfm_setPropAsString(obj.edit9, "fontStyle",  "bold");
    obj.edit9:setName("edit9");
    obj.edit9:setReadOnly(true);
    obj.edit9:setCanFocus(false);
    obj.edit9:setHorzTextAlign("center");
    obj.edit9:setAlign("client");

    obj.flowLayout11 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout11:setParent(obj.tabelaAtributos);
    obj.flowLayout11:setName("flowLayout11");
    obj.flowLayout11:setWidth(100);
    obj.flowLayout11:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit10 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.flowLayout11);
    obj.edit10:setText("Total");
    lfm_setPropAsString(obj.edit10, "fontStyle",  "bold");
    obj.edit10:setName("edit10");
    obj.edit10:setReadOnly(true);
    obj.edit10:setCanFocus(false);
    obj.edit10:setHorzTextAlign("center");
    obj.edit10:setAlign("client");

    obj.flowLayout12 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout12:setParent(obj.tabelaAtributos);
    obj.flowLayout12:setName("flowLayout12");
    obj.flowLayout12:setWidth(100);
    obj.flowLayout12:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit11 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.flowLayout12);
    obj.edit11:setText("Constituição");
    lfm_setPropAsString(obj.edit11, "fontStyle",  "bold");
    obj.edit11:setName("edit11");
    obj.edit11:setReadOnly(true);
    obj.edit11:setCanFocus(false);
    obj.edit11:setHorzTextAlign("center");
    obj.edit11:setAlign("client");

    obj.flowLayout13 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout13:setParent(obj.tabelaAtributos);
    obj.flowLayout13:setName("flowLayout13");
    obj.flowLayout13:setWidth(100);
    obj.flowLayout13:setMargins({top=2,bottom=2,left=2,right=2});

    obj.nivelcon = GUI.fromHandle(_obj_newObject("edit"));
    obj.nivelcon:setParent(obj.flowLayout13);
    obj.nivelcon:setName("nivelcon");
    obj.nivelcon:setType("number");
    obj.nivelcon:setField("nivelcon");
    obj.nivelcon:setMin(0);
    obj.nivelcon:setFontColor("white");
    obj.nivelcon:setReadOnly(false);
    obj.nivelcon:setCanFocus(true);
    obj.nivelcon:setHorzTextAlign("center");
    obj.nivelcon:setAlign("client");

    obj.flowLayout14 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout14:setParent(obj.tabelaAtributos);
    obj.flowLayout14:setName("flowLayout14");
    obj.flowLayout14:setWidth(100);
    obj.flowLayout14:setMargins({top=2,bottom=2,left=2,right=2});

    obj.classecon = GUI.fromHandle(_obj_newObject("edit"));
    obj.classecon:setParent(obj.flowLayout14);
    obj.classecon:setName("classecon");
    obj.classecon:setType("number");
    obj.classecon:setField("classecon");
    obj.classecon:setMin(0);
    obj.classecon:setFontColor("white");
    obj.classecon:setReadOnly(false);
    obj.classecon:setCanFocus(true);
    obj.classecon:setHorzTextAlign("center");
    obj.classecon:setAlign("client");

    obj.flowLayout15 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout15:setParent(obj.tabelaAtributos);
    obj.flowLayout15:setName("flowLayout15");
    obj.flowLayout15:setWidth(100);
    obj.flowLayout15:setMargins({top=2,bottom=2,left=2,right=2});

    obj.racacon = GUI.fromHandle(_obj_newObject("edit"));
    obj.racacon:setParent(obj.flowLayout15);
    obj.racacon:setName("racacon");
    obj.racacon:setType("number");
    obj.racacon:setField("racacon");
    obj.racacon:setMin(0);
    obj.racacon:setFontColor("white");
    obj.racacon:setReadOnly(false);
    obj.racacon:setCanFocus(true);
    obj.racacon:setHorzTextAlign("center");
    obj.racacon:setAlign("client");

    obj.flowLayout16 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout16:setParent(obj.tabelaAtributos);
    obj.flowLayout16:setName("flowLayout16");
    obj.flowLayout16:setWidth(100);
    obj.flowLayout16:setMargins({top=2,bottom=2,left=2,right=2});

    obj.treinocon = GUI.fromHandle(_obj_newObject("edit"));
    obj.treinocon:setParent(obj.flowLayout16);
    obj.treinocon:setName("treinocon");
    obj.treinocon:setType("number");
    obj.treinocon:setField("treinocon");
    obj.treinocon:setMin(0);
    obj.treinocon:setFontColor("white");
    obj.treinocon:setReadOnly(false);
    obj.treinocon:setCanFocus(true);
    obj.treinocon:setHorzTextAlign("center");
    obj.treinocon:setAlign("client");

    obj.flowLayout17 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout17:setParent(obj.tabelaAtributos);
    obj.flowLayout17:setName("flowLayout17");
    obj.flowLayout17:setWidth(100);
    obj.flowLayout17:setMargins({top=2,bottom=2,left=2,right=2});

    obj.outrocon = GUI.fromHandle(_obj_newObject("edit"));
    obj.outrocon:setParent(obj.flowLayout17);
    obj.outrocon:setName("outrocon");
    obj.outrocon:setType("number");
    obj.outrocon:setField("outrocon");
    obj.outrocon:setMin(0);
    obj.outrocon:setFontColor("white");
    obj.outrocon:setReadOnly(false);
    obj.outrocon:setCanFocus(true);
    obj.outrocon:setHorzTextAlign("center");
    obj.outrocon:setAlign("client");

    obj.flowLayout18 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout18:setParent(obj.tabelaAtributos);
    obj.flowLayout18:setName("flowLayout18");
    obj.flowLayout18:setWidth(100);
    obj.flowLayout18:setMargins({top=2,bottom=2,left=2,right=2});

    obj.basecon = GUI.fromHandle(_obj_newObject("edit"));
    obj.basecon:setParent(obj.flowLayout18);
    obj.basecon:setName("basecon");
    obj.basecon:setType("number");
    obj.basecon:setField("basecon");
    obj.basecon:setMin(0);
    obj.basecon:setFontColor("white");
    obj.basecon:setReadOnly(true);
    obj.basecon:setCanFocus(false);
    obj.basecon:setHorzTextAlign("center");
    obj.basecon:setAlign("client");

    obj.flowLayout19 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout19:setParent(obj.tabelaAtributos);
    obj.flowLayout19:setName("flowLayout19");
    obj.flowLayout19:setWidth(100);
    obj.flowLayout19:setMargins({top=2,bottom=2,left=2,right=2});

    obj.multiplicadorcon = GUI.fromHandle(_obj_newObject("edit"));
    obj.multiplicadorcon:setParent(obj.flowLayout19);
    obj.multiplicadorcon:setName("multiplicadorcon");
    obj.multiplicadorcon:setType("number");
    obj.multiplicadorcon:setField("multiplicadorcon");
    obj.multiplicadorcon:setMin(0);
    obj.multiplicadorcon:setFontColor("white");
    obj.multiplicadorcon:setReadOnly(false);
    obj.multiplicadorcon:setCanFocus(true);
    obj.multiplicadorcon:setHorzTextAlign("center");
    obj.multiplicadorcon:setAlign("client");

    obj.flowLayout20 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout20:setParent(obj.tabelaAtributos);
    obj.flowLayout20:setName("flowLayout20");
    obj.flowLayout20:setWidth(100);
    obj.flowLayout20:setMargins({top=2,bottom=2,left=2,right=2});

    obj.extracon = GUI.fromHandle(_obj_newObject("edit"));
    obj.extracon:setParent(obj.flowLayout20);
    obj.extracon:setName("extracon");
    obj.extracon:setType("number");
    obj.extracon:setField("extracon");
    obj.extracon:setMin(0);
    obj.extracon:setFontColor("white");
    obj.extracon:setReadOnly(false);
    obj.extracon:setCanFocus(true);
    obj.extracon:setHorzTextAlign("center");
    obj.extracon:setAlign("client");

    obj.flowLayout21 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout21:setParent(obj.tabelaAtributos);
    obj.flowLayout21:setName("flowLayout21");
    obj.flowLayout21:setWidth(100);
    obj.flowLayout21:setMargins({top=2,bottom=2,left=2,right=2});

    obj.totalcon = GUI.fromHandle(_obj_newObject("edit"));
    obj.totalcon:setParent(obj.flowLayout21);
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

    obj.flowLayout22 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout22:setParent(obj.tabelaAtributos);
    obj.flowLayout22:setName("flowLayout22");
    obj.flowLayout22:setWidth(100);
    obj.flowLayout22:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit12 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.flowLayout22);
    obj.edit12:setText("Força");
    lfm_setPropAsString(obj.edit12, "fontStyle",  "bold");
    obj.edit12:setName("edit12");
    obj.edit12:setReadOnly(true);
    obj.edit12:setCanFocus(false);
    obj.edit12:setHorzTextAlign("center");
    obj.edit12:setAlign("client");

    obj.flowLayout23 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout23:setParent(obj.tabelaAtributos);
    obj.flowLayout23:setName("flowLayout23");
    obj.flowLayout23:setWidth(100);
    obj.flowLayout23:setMargins({top=2,bottom=2,left=2,right=2});

    obj.nivelfor = GUI.fromHandle(_obj_newObject("edit"));
    obj.nivelfor:setParent(obj.flowLayout23);
    obj.nivelfor:setName("nivelfor");
    obj.nivelfor:setType("number");
    obj.nivelfor:setField("nivelfor");
    obj.nivelfor:setMin(0);
    obj.nivelfor:setFontColor("white");
    obj.nivelfor:setReadOnly(false);
    obj.nivelfor:setCanFocus(true);
    obj.nivelfor:setHorzTextAlign("center");
    obj.nivelfor:setAlign("client");

    obj.flowLayout24 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout24:setParent(obj.tabelaAtributos);
    obj.flowLayout24:setName("flowLayout24");
    obj.flowLayout24:setWidth(100);
    obj.flowLayout24:setMargins({top=2,bottom=2,left=2,right=2});

    obj.classefor = GUI.fromHandle(_obj_newObject("edit"));
    obj.classefor:setParent(obj.flowLayout24);
    obj.classefor:setName("classefor");
    obj.classefor:setType("number");
    obj.classefor:setField("classefor");
    obj.classefor:setMin(0);
    obj.classefor:setFontColor("white");
    obj.classefor:setReadOnly(false);
    obj.classefor:setCanFocus(true);
    obj.classefor:setHorzTextAlign("center");
    obj.classefor:setAlign("client");

    obj.flowLayout25 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout25:setParent(obj.tabelaAtributos);
    obj.flowLayout25:setName("flowLayout25");
    obj.flowLayout25:setWidth(100);
    obj.flowLayout25:setMargins({top=2,bottom=2,left=2,right=2});

    obj.racafor = GUI.fromHandle(_obj_newObject("edit"));
    obj.racafor:setParent(obj.flowLayout25);
    obj.racafor:setName("racafor");
    obj.racafor:setType("number");
    obj.racafor:setField("racafor");
    obj.racafor:setMin(0);
    obj.racafor:setFontColor("white");
    obj.racafor:setReadOnly(false);
    obj.racafor:setCanFocus(true);
    obj.racafor:setHorzTextAlign("center");
    obj.racafor:setAlign("client");

    obj.flowLayout26 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout26:setParent(obj.tabelaAtributos);
    obj.flowLayout26:setName("flowLayout26");
    obj.flowLayout26:setWidth(100);
    obj.flowLayout26:setMargins({top=2,bottom=2,left=2,right=2});

    obj.treinofor = GUI.fromHandle(_obj_newObject("edit"));
    obj.treinofor:setParent(obj.flowLayout26);
    obj.treinofor:setName("treinofor");
    obj.treinofor:setType("number");
    obj.treinofor:setField("treinofor");
    obj.treinofor:setMin(0);
    obj.treinofor:setFontColor("white");
    obj.treinofor:setReadOnly(false);
    obj.treinofor:setCanFocus(true);
    obj.treinofor:setHorzTextAlign("center");
    obj.treinofor:setAlign("client");

    obj.flowLayout27 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout27:setParent(obj.tabelaAtributos);
    obj.flowLayout27:setName("flowLayout27");
    obj.flowLayout27:setWidth(100);
    obj.flowLayout27:setMargins({top=2,bottom=2,left=2,right=2});

    obj.outrofor = GUI.fromHandle(_obj_newObject("edit"));
    obj.outrofor:setParent(obj.flowLayout27);
    obj.outrofor:setName("outrofor");
    obj.outrofor:setType("number");
    obj.outrofor:setField("outrofor");
    obj.outrofor:setMin(0);
    obj.outrofor:setFontColor("white");
    obj.outrofor:setReadOnly(false);
    obj.outrofor:setCanFocus(true);
    obj.outrofor:setHorzTextAlign("center");
    obj.outrofor:setAlign("client");

    obj.flowLayout28 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout28:setParent(obj.tabelaAtributos);
    obj.flowLayout28:setName("flowLayout28");
    obj.flowLayout28:setWidth(100);
    obj.flowLayout28:setMargins({top=2,bottom=2,left=2,right=2});

    obj.basefor = GUI.fromHandle(_obj_newObject("edit"));
    obj.basefor:setParent(obj.flowLayout28);
    obj.basefor:setName("basefor");
    obj.basefor:setType("number");
    obj.basefor:setField("basefor");
    obj.basefor:setMin(0);
    obj.basefor:setFontColor("white");
    obj.basefor:setReadOnly(true);
    obj.basefor:setCanFocus(false);
    obj.basefor:setHorzTextAlign("center");
    obj.basefor:setAlign("client");

    obj.flowLayout29 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout29:setParent(obj.tabelaAtributos);
    obj.flowLayout29:setName("flowLayout29");
    obj.flowLayout29:setWidth(100);
    obj.flowLayout29:setMargins({top=2,bottom=2,left=2,right=2});

    obj.multiplicadorfor = GUI.fromHandle(_obj_newObject("edit"));
    obj.multiplicadorfor:setParent(obj.flowLayout29);
    obj.multiplicadorfor:setName("multiplicadorfor");
    obj.multiplicadorfor:setType("number");
    obj.multiplicadorfor:setField("multiplicadorfor");
    obj.multiplicadorfor:setMin(0);
    obj.multiplicadorfor:setFontColor("white");
    obj.multiplicadorfor:setReadOnly(false);
    obj.multiplicadorfor:setCanFocus(true);
    obj.multiplicadorfor:setHorzTextAlign("center");
    obj.multiplicadorfor:setAlign("client");

    obj.flowLayout30 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout30:setParent(obj.tabelaAtributos);
    obj.flowLayout30:setName("flowLayout30");
    obj.flowLayout30:setWidth(100);
    obj.flowLayout30:setMargins({top=2,bottom=2,left=2,right=2});

    obj.extrafor = GUI.fromHandle(_obj_newObject("edit"));
    obj.extrafor:setParent(obj.flowLayout30);
    obj.extrafor:setName("extrafor");
    obj.extrafor:setType("number");
    obj.extrafor:setField("extrafor");
    obj.extrafor:setMin(0);
    obj.extrafor:setFontColor("white");
    obj.extrafor:setReadOnly(false);
    obj.extrafor:setCanFocus(true);
    obj.extrafor:setHorzTextAlign("center");
    obj.extrafor:setAlign("client");

    obj.flowLayout31 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout31:setParent(obj.tabelaAtributos);
    obj.flowLayout31:setName("flowLayout31");
    obj.flowLayout31:setWidth(100);
    obj.flowLayout31:setMargins({top=2,bottom=2,left=2,right=2});

    obj.totalfor = GUI.fromHandle(_obj_newObject("edit"));
    obj.totalfor:setParent(obj.flowLayout31);
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

    obj.flowLayout32 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout32:setParent(obj.tabelaAtributos);
    obj.flowLayout32:setName("flowLayout32");
    obj.flowLayout32:setWidth(100);
    obj.flowLayout32:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit13 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.flowLayout32);
    obj.edit13:setText("Destreza");
    lfm_setPropAsString(obj.edit13, "fontStyle",  "bold");
    obj.edit13:setName("edit13");
    obj.edit13:setReadOnly(true);
    obj.edit13:setCanFocus(false);
    obj.edit13:setHorzTextAlign("center");
    obj.edit13:setAlign("client");

    obj.flowLayout33 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout33:setParent(obj.tabelaAtributos);
    obj.flowLayout33:setName("flowLayout33");
    obj.flowLayout33:setWidth(100);
    obj.flowLayout33:setMargins({top=2,bottom=2,left=2,right=2});

    obj.niveldex = GUI.fromHandle(_obj_newObject("edit"));
    obj.niveldex:setParent(obj.flowLayout33);
    obj.niveldex:setName("niveldex");
    obj.niveldex:setType("number");
    obj.niveldex:setField("niveldex");
    obj.niveldex:setMin(0);
    obj.niveldex:setFontColor("white");
    obj.niveldex:setReadOnly(false);
    obj.niveldex:setCanFocus(true);
    obj.niveldex:setHorzTextAlign("center");
    obj.niveldex:setAlign("client");

    obj.flowLayout34 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout34:setParent(obj.tabelaAtributos);
    obj.flowLayout34:setName("flowLayout34");
    obj.flowLayout34:setWidth(100);
    obj.flowLayout34:setMargins({top=2,bottom=2,left=2,right=2});

    obj.classedex = GUI.fromHandle(_obj_newObject("edit"));
    obj.classedex:setParent(obj.flowLayout34);
    obj.classedex:setName("classedex");
    obj.classedex:setType("number");
    obj.classedex:setField("classedex");
    obj.classedex:setMin(0);
    obj.classedex:setFontColor("white");
    obj.classedex:setReadOnly(false);
    obj.classedex:setCanFocus(true);
    obj.classedex:setHorzTextAlign("center");
    obj.classedex:setAlign("client");

    obj.flowLayout35 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout35:setParent(obj.tabelaAtributos);
    obj.flowLayout35:setName("flowLayout35");
    obj.flowLayout35:setWidth(100);
    obj.flowLayout35:setMargins({top=2,bottom=2,left=2,right=2});

    obj.racadex = GUI.fromHandle(_obj_newObject("edit"));
    obj.racadex:setParent(obj.flowLayout35);
    obj.racadex:setName("racadex");
    obj.racadex:setType("number");
    obj.racadex:setField("racadex");
    obj.racadex:setMin(0);
    obj.racadex:setFontColor("white");
    obj.racadex:setReadOnly(false);
    obj.racadex:setCanFocus(true);
    obj.racadex:setHorzTextAlign("center");
    obj.racadex:setAlign("client");

    obj.flowLayout36 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout36:setParent(obj.tabelaAtributos);
    obj.flowLayout36:setName("flowLayout36");
    obj.flowLayout36:setWidth(100);
    obj.flowLayout36:setMargins({top=2,bottom=2,left=2,right=2});

    obj.treinodex = GUI.fromHandle(_obj_newObject("edit"));
    obj.treinodex:setParent(obj.flowLayout36);
    obj.treinodex:setName("treinodex");
    obj.treinodex:setType("number");
    obj.treinodex:setField("treinodex");
    obj.treinodex:setMin(0);
    obj.treinodex:setFontColor("white");
    obj.treinodex:setReadOnly(false);
    obj.treinodex:setCanFocus(true);
    obj.treinodex:setHorzTextAlign("center");
    obj.treinodex:setAlign("client");

    obj.flowLayout37 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout37:setParent(obj.tabelaAtributos);
    obj.flowLayout37:setName("flowLayout37");
    obj.flowLayout37:setWidth(100);
    obj.flowLayout37:setMargins({top=2,bottom=2,left=2,right=2});

    obj.outrodex = GUI.fromHandle(_obj_newObject("edit"));
    obj.outrodex:setParent(obj.flowLayout37);
    obj.outrodex:setName("outrodex");
    obj.outrodex:setType("number");
    obj.outrodex:setField("outrodex");
    obj.outrodex:setMin(0);
    obj.outrodex:setFontColor("white");
    obj.outrodex:setReadOnly(false);
    obj.outrodex:setCanFocus(true);
    obj.outrodex:setHorzTextAlign("center");
    obj.outrodex:setAlign("client");

    obj.flowLayout38 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout38:setParent(obj.tabelaAtributos);
    obj.flowLayout38:setName("flowLayout38");
    obj.flowLayout38:setWidth(100);
    obj.flowLayout38:setMargins({top=2,bottom=2,left=2,right=2});

    obj.basedex = GUI.fromHandle(_obj_newObject("edit"));
    obj.basedex:setParent(obj.flowLayout38);
    obj.basedex:setName("basedex");
    obj.basedex:setType("number");
    obj.basedex:setField("basedex");
    obj.basedex:setMin(0);
    obj.basedex:setFontColor("white");
    obj.basedex:setReadOnly(true);
    obj.basedex:setCanFocus(false);
    obj.basedex:setHorzTextAlign("center");
    obj.basedex:setAlign("client");

    obj.flowLayout39 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout39:setParent(obj.tabelaAtributos);
    obj.flowLayout39:setName("flowLayout39");
    obj.flowLayout39:setWidth(100);
    obj.flowLayout39:setMargins({top=2,bottom=2,left=2,right=2});

    obj.multiplicadordex = GUI.fromHandle(_obj_newObject("edit"));
    obj.multiplicadordex:setParent(obj.flowLayout39);
    obj.multiplicadordex:setName("multiplicadordex");
    obj.multiplicadordex:setType("number");
    obj.multiplicadordex:setField("multiplicadordex");
    obj.multiplicadordex:setMin(0);
    obj.multiplicadordex:setFontColor("white");
    obj.multiplicadordex:setReadOnly(false);
    obj.multiplicadordex:setCanFocus(true);
    obj.multiplicadordex:setHorzTextAlign("center");
    obj.multiplicadordex:setAlign("client");

    obj.flowLayout40 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout40:setParent(obj.tabelaAtributos);
    obj.flowLayout40:setName("flowLayout40");
    obj.flowLayout40:setWidth(100);
    obj.flowLayout40:setMargins({top=2,bottom=2,left=2,right=2});

    obj.extradex = GUI.fromHandle(_obj_newObject("edit"));
    obj.extradex:setParent(obj.flowLayout40);
    obj.extradex:setName("extradex");
    obj.extradex:setType("number");
    obj.extradex:setField("extradex");
    obj.extradex:setMin(0);
    obj.extradex:setFontColor("white");
    obj.extradex:setReadOnly(false);
    obj.extradex:setCanFocus(true);
    obj.extradex:setHorzTextAlign("center");
    obj.extradex:setAlign("client");

    obj.flowLayout41 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout41:setParent(obj.tabelaAtributos);
    obj.flowLayout41:setName("flowLayout41");
    obj.flowLayout41:setWidth(100);
    obj.flowLayout41:setMargins({top=2,bottom=2,left=2,right=2});

    obj.totaldex = GUI.fromHandle(_obj_newObject("edit"));
    obj.totaldex:setParent(obj.flowLayout41);
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

    obj.flowLayout42 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout42:setParent(obj.tabelaAtributos);
    obj.flowLayout42:setName("flowLayout42");
    obj.flowLayout42:setWidth(100);
    obj.flowLayout42:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit14 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.flowLayout42);
    obj.edit14:setText("Carisma");
    lfm_setPropAsString(obj.edit14, "fontStyle",  "bold");
    obj.edit14:setName("edit14");
    obj.edit14:setReadOnly(true);
    obj.edit14:setCanFocus(false);
    obj.edit14:setHorzTextAlign("center");
    obj.edit14:setAlign("client");

    obj.flowLayout43 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout43:setParent(obj.tabelaAtributos);
    obj.flowLayout43:setName("flowLayout43");
    obj.flowLayout43:setWidth(100);
    obj.flowLayout43:setMargins({top=2,bottom=2,left=2,right=2});

    obj.nivelcar = GUI.fromHandle(_obj_newObject("edit"));
    obj.nivelcar:setParent(obj.flowLayout43);
    obj.nivelcar:setName("nivelcar");
    obj.nivelcar:setType("number");
    obj.nivelcar:setField("nivelcar");
    obj.nivelcar:setMin(0);
    obj.nivelcar:setFontColor("white");
    obj.nivelcar:setReadOnly(false);
    obj.nivelcar:setCanFocus(true);
    obj.nivelcar:setHorzTextAlign("center");
    obj.nivelcar:setAlign("client");

    obj.flowLayout44 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout44:setParent(obj.tabelaAtributos);
    obj.flowLayout44:setName("flowLayout44");
    obj.flowLayout44:setWidth(100);
    obj.flowLayout44:setMargins({top=2,bottom=2,left=2,right=2});

    obj.classecar = GUI.fromHandle(_obj_newObject("edit"));
    obj.classecar:setParent(obj.flowLayout44);
    obj.classecar:setName("classecar");
    obj.classecar:setType("number");
    obj.classecar:setField("classecar");
    obj.classecar:setMin(0);
    obj.classecar:setFontColor("white");
    obj.classecar:setReadOnly(false);
    obj.classecar:setCanFocus(true);
    obj.classecar:setHorzTextAlign("center");
    obj.classecar:setAlign("client");

    obj.flowLayout45 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout45:setParent(obj.tabelaAtributos);
    obj.flowLayout45:setName("flowLayout45");
    obj.flowLayout45:setWidth(100);
    obj.flowLayout45:setMargins({top=2,bottom=2,left=2,right=2});

    obj.racacar = GUI.fromHandle(_obj_newObject("edit"));
    obj.racacar:setParent(obj.flowLayout45);
    obj.racacar:setName("racacar");
    obj.racacar:setType("number");
    obj.racacar:setField("racacar");
    obj.racacar:setMin(0);
    obj.racacar:setFontColor("white");
    obj.racacar:setReadOnly(false);
    obj.racacar:setCanFocus(true);
    obj.racacar:setHorzTextAlign("center");
    obj.racacar:setAlign("client");

    obj.flowLayout46 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout46:setParent(obj.tabelaAtributos);
    obj.flowLayout46:setName("flowLayout46");
    obj.flowLayout46:setWidth(100);
    obj.flowLayout46:setMargins({top=2,bottom=2,left=2,right=2});

    obj.treinocar = GUI.fromHandle(_obj_newObject("edit"));
    obj.treinocar:setParent(obj.flowLayout46);
    obj.treinocar:setName("treinocar");
    obj.treinocar:setType("number");
    obj.treinocar:setField("treinocar");
    obj.treinocar:setMin(0);
    obj.treinocar:setFontColor("white");
    obj.treinocar:setReadOnly(false);
    obj.treinocar:setCanFocus(true);
    obj.treinocar:setHorzTextAlign("center");
    obj.treinocar:setAlign("client");

    obj.flowLayout47 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout47:setParent(obj.tabelaAtributos);
    obj.flowLayout47:setName("flowLayout47");
    obj.flowLayout47:setWidth(100);
    obj.flowLayout47:setMargins({top=2,bottom=2,left=2,right=2});

    obj.outrocar = GUI.fromHandle(_obj_newObject("edit"));
    obj.outrocar:setParent(obj.flowLayout47);
    obj.outrocar:setName("outrocar");
    obj.outrocar:setType("number");
    obj.outrocar:setField("outrocar");
    obj.outrocar:setMin(0);
    obj.outrocar:setFontColor("white");
    obj.outrocar:setReadOnly(false);
    obj.outrocar:setCanFocus(true);
    obj.outrocar:setHorzTextAlign("center");
    obj.outrocar:setAlign("client");

    obj.flowLayout48 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout48:setParent(obj.tabelaAtributos);
    obj.flowLayout48:setName("flowLayout48");
    obj.flowLayout48:setWidth(100);
    obj.flowLayout48:setMargins({top=2,bottom=2,left=2,right=2});

    obj.basecar = GUI.fromHandle(_obj_newObject("edit"));
    obj.basecar:setParent(obj.flowLayout48);
    obj.basecar:setName("basecar");
    obj.basecar:setType("number");
    obj.basecar:setField("basecar");
    obj.basecar:setMin(0);
    obj.basecar:setFontColor("white");
    obj.basecar:setReadOnly(true);
    obj.basecar:setCanFocus(false);
    obj.basecar:setHorzTextAlign("center");
    obj.basecar:setAlign("client");

    obj.flowLayout49 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout49:setParent(obj.tabelaAtributos);
    obj.flowLayout49:setName("flowLayout49");
    obj.flowLayout49:setWidth(100);
    obj.flowLayout49:setMargins({top=2,bottom=2,left=2,right=2});

    obj.multiplicadorcar = GUI.fromHandle(_obj_newObject("edit"));
    obj.multiplicadorcar:setParent(obj.flowLayout49);
    obj.multiplicadorcar:setName("multiplicadorcar");
    obj.multiplicadorcar:setType("number");
    obj.multiplicadorcar:setField("multiplicadorcar");
    obj.multiplicadorcar:setMin(0);
    obj.multiplicadorcar:setFontColor("white");
    obj.multiplicadorcar:setReadOnly(false);
    obj.multiplicadorcar:setCanFocus(true);
    obj.multiplicadorcar:setHorzTextAlign("center");
    obj.multiplicadorcar:setAlign("client");

    obj.flowLayout50 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout50:setParent(obj.tabelaAtributos);
    obj.flowLayout50:setName("flowLayout50");
    obj.flowLayout50:setWidth(100);
    obj.flowLayout50:setMargins({top=2,bottom=2,left=2,right=2});

    obj.extracar = GUI.fromHandle(_obj_newObject("edit"));
    obj.extracar:setParent(obj.flowLayout50);
    obj.extracar:setName("extracar");
    obj.extracar:setType("number");
    obj.extracar:setField("extracar");
    obj.extracar:setMin(0);
    obj.extracar:setFontColor("white");
    obj.extracar:setReadOnly(false);
    obj.extracar:setCanFocus(true);
    obj.extracar:setHorzTextAlign("center");
    obj.extracar:setAlign("client");

    obj.flowLayout51 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout51:setParent(obj.tabelaAtributos);
    obj.flowLayout51:setName("flowLayout51");
    obj.flowLayout51:setWidth(100);
    obj.flowLayout51:setMargins({top=2,bottom=2,left=2,right=2});

    obj.totalcar = GUI.fromHandle(_obj_newObject("edit"));
    obj.totalcar:setParent(obj.flowLayout51);
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

    obj.flowLayout52 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout52:setParent(obj.tabelaAtributos);
    obj.flowLayout52:setName("flowLayout52");
    obj.flowLayout52:setWidth(100);
    obj.flowLayout52:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit15 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj.flowLayout52);
    obj.edit15:setText("Inteligência");
    lfm_setPropAsString(obj.edit15, "fontStyle",  "bold");
    obj.edit15:setName("edit15");
    obj.edit15:setReadOnly(true);
    obj.edit15:setCanFocus(false);
    obj.edit15:setHorzTextAlign("center");
    obj.edit15:setAlign("client");

    obj.flowLayout53 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout53:setParent(obj.tabelaAtributos);
    obj.flowLayout53:setName("flowLayout53");
    obj.flowLayout53:setWidth(100);
    obj.flowLayout53:setMargins({top=2,bottom=2,left=2,right=2});

    obj.nivelint = GUI.fromHandle(_obj_newObject("edit"));
    obj.nivelint:setParent(obj.flowLayout53);
    obj.nivelint:setName("nivelint");
    obj.nivelint:setType("number");
    obj.nivelint:setField("nivelint");
    obj.nivelint:setMin(0);
    obj.nivelint:setFontColor("white");
    obj.nivelint:setReadOnly(false);
    obj.nivelint:setCanFocus(true);
    obj.nivelint:setHorzTextAlign("center");
    obj.nivelint:setAlign("client");

    obj.flowLayout54 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout54:setParent(obj.tabelaAtributos);
    obj.flowLayout54:setName("flowLayout54");
    obj.flowLayout54:setWidth(100);
    obj.flowLayout54:setMargins({top=2,bottom=2,left=2,right=2});

    obj.classeint = GUI.fromHandle(_obj_newObject("edit"));
    obj.classeint:setParent(obj.flowLayout54);
    obj.classeint:setName("classeint");
    obj.classeint:setType("number");
    obj.classeint:setField("classeint");
    obj.classeint:setMin(0);
    obj.classeint:setFontColor("white");
    obj.classeint:setReadOnly(false);
    obj.classeint:setCanFocus(true);
    obj.classeint:setHorzTextAlign("center");
    obj.classeint:setAlign("client");

    obj.flowLayout55 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout55:setParent(obj.tabelaAtributos);
    obj.flowLayout55:setName("flowLayout55");
    obj.flowLayout55:setWidth(100);
    obj.flowLayout55:setMargins({top=2,bottom=2,left=2,right=2});

    obj.racaint = GUI.fromHandle(_obj_newObject("edit"));
    obj.racaint:setParent(obj.flowLayout55);
    obj.racaint:setName("racaint");
    obj.racaint:setType("number");
    obj.racaint:setField("racaint");
    obj.racaint:setMin(0);
    obj.racaint:setFontColor("white");
    obj.racaint:setReadOnly(false);
    obj.racaint:setCanFocus(true);
    obj.racaint:setHorzTextAlign("center");
    obj.racaint:setAlign("client");

    obj.flowLayout56 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout56:setParent(obj.tabelaAtributos);
    obj.flowLayout56:setName("flowLayout56");
    obj.flowLayout56:setWidth(100);
    obj.flowLayout56:setMargins({top=2,bottom=2,left=2,right=2});

    obj.treinoint = GUI.fromHandle(_obj_newObject("edit"));
    obj.treinoint:setParent(obj.flowLayout56);
    obj.treinoint:setName("treinoint");
    obj.treinoint:setType("number");
    obj.treinoint:setField("treinoint");
    obj.treinoint:setMin(0);
    obj.treinoint:setFontColor("white");
    obj.treinoint:setReadOnly(false);
    obj.treinoint:setCanFocus(true);
    obj.treinoint:setHorzTextAlign("center");
    obj.treinoint:setAlign("client");

    obj.flowLayout57 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout57:setParent(obj.tabelaAtributos);
    obj.flowLayout57:setName("flowLayout57");
    obj.flowLayout57:setWidth(100);
    obj.flowLayout57:setMargins({top=2,bottom=2,left=2,right=2});

    obj.outroint = GUI.fromHandle(_obj_newObject("edit"));
    obj.outroint:setParent(obj.flowLayout57);
    obj.outroint:setName("outroint");
    obj.outroint:setType("number");
    obj.outroint:setField("outroint");
    obj.outroint:setMin(0);
    obj.outroint:setFontColor("white");
    obj.outroint:setReadOnly(false);
    obj.outroint:setCanFocus(true);
    obj.outroint:setHorzTextAlign("center");
    obj.outroint:setAlign("client");

    obj.flowLayout58 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout58:setParent(obj.tabelaAtributos);
    obj.flowLayout58:setName("flowLayout58");
    obj.flowLayout58:setWidth(100);
    obj.flowLayout58:setMargins({top=2,bottom=2,left=2,right=2});

    obj.baseint = GUI.fromHandle(_obj_newObject("edit"));
    obj.baseint:setParent(obj.flowLayout58);
    obj.baseint:setName("baseint");
    obj.baseint:setType("number");
    obj.baseint:setField("baseint");
    obj.baseint:setMin(0);
    obj.baseint:setFontColor("white");
    obj.baseint:setReadOnly(true);
    obj.baseint:setCanFocus(false);
    obj.baseint:setHorzTextAlign("center");
    obj.baseint:setAlign("client");

    obj.flowLayout59 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout59:setParent(obj.tabelaAtributos);
    obj.flowLayout59:setName("flowLayout59");
    obj.flowLayout59:setWidth(100);
    obj.flowLayout59:setMargins({top=2,bottom=2,left=2,right=2});

    obj.multiplicadorint = GUI.fromHandle(_obj_newObject("edit"));
    obj.multiplicadorint:setParent(obj.flowLayout59);
    obj.multiplicadorint:setName("multiplicadorint");
    obj.multiplicadorint:setType("number");
    obj.multiplicadorint:setField("multiplicadorint");
    obj.multiplicadorint:setMin(0);
    obj.multiplicadorint:setFontColor("white");
    obj.multiplicadorint:setReadOnly(false);
    obj.multiplicadorint:setCanFocus(true);
    obj.multiplicadorint:setHorzTextAlign("center");
    obj.multiplicadorint:setAlign("client");

    obj.flowLayout60 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout60:setParent(obj.tabelaAtributos);
    obj.flowLayout60:setName("flowLayout60");
    obj.flowLayout60:setWidth(100);
    obj.flowLayout60:setMargins({top=2,bottom=2,left=2,right=2});

    obj.extraint = GUI.fromHandle(_obj_newObject("edit"));
    obj.extraint:setParent(obj.flowLayout60);
    obj.extraint:setName("extraint");
    obj.extraint:setType("number");
    obj.extraint:setField("extraint");
    obj.extraint:setMin(0);
    obj.extraint:setFontColor("white");
    obj.extraint:setReadOnly(false);
    obj.extraint:setCanFocus(true);
    obj.extraint:setHorzTextAlign("center");
    obj.extraint:setAlign("client");

    obj.flowLayout61 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout61:setParent(obj.tabelaAtributos);
    obj.flowLayout61:setName("flowLayout61");
    obj.flowLayout61:setWidth(100);
    obj.flowLayout61:setMargins({top=2,bottom=2,left=2,right=2});

    obj.totalint = GUI.fromHandle(_obj_newObject("edit"));
    obj.totalint:setParent(obj.flowLayout61);
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

    obj.flowLayout62 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout62:setParent(obj.tabelaAtributos);
    obj.flowLayout62:setName("flowLayout62");
    obj.flowLayout62:setWidth(100);
    obj.flowLayout62:setMargins({top=2,bottom=2,left=2,right=2});

    obj.edit16 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj.flowLayout62);
    obj.edit16:setText("Sabedoria");
    lfm_setPropAsString(obj.edit16, "fontStyle",  "bold");
    obj.edit16:setName("edit16");
    obj.edit16:setReadOnly(true);
    obj.edit16:setCanFocus(false);
    obj.edit16:setHorzTextAlign("center");
    obj.edit16:setAlign("client");

    obj.flowLayout63 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout63:setParent(obj.tabelaAtributos);
    obj.flowLayout63:setName("flowLayout63");
    obj.flowLayout63:setWidth(100);
    obj.flowLayout63:setMargins({top=2,bottom=2,left=2,right=2});

    obj.nivelsab = GUI.fromHandle(_obj_newObject("edit"));
    obj.nivelsab:setParent(obj.flowLayout63);
    obj.nivelsab:setName("nivelsab");
    obj.nivelsab:setType("number");
    obj.nivelsab:setField("nivelsab");
    obj.nivelsab:setMin(0);
    obj.nivelsab:setFontColor("white");
    obj.nivelsab:setReadOnly(false);
    obj.nivelsab:setCanFocus(true);
    obj.nivelsab:setHorzTextAlign("center");
    obj.nivelsab:setAlign("client");

    obj.flowLayout64 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout64:setParent(obj.tabelaAtributos);
    obj.flowLayout64:setName("flowLayout64");
    obj.flowLayout64:setWidth(100);
    obj.flowLayout64:setMargins({top=2,bottom=2,left=2,right=2});

    obj.classesab = GUI.fromHandle(_obj_newObject("edit"));
    obj.classesab:setParent(obj.flowLayout64);
    obj.classesab:setName("classesab");
    obj.classesab:setType("number");
    obj.classesab:setField("classesab");
    obj.classesab:setMin(0);
    obj.classesab:setFontColor("white");
    obj.classesab:setReadOnly(false);
    obj.classesab:setCanFocus(true);
    obj.classesab:setHorzTextAlign("center");
    obj.classesab:setAlign("client");

    obj.flowLayout65 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout65:setParent(obj.tabelaAtributos);
    obj.flowLayout65:setName("flowLayout65");
    obj.flowLayout65:setWidth(100);
    obj.flowLayout65:setMargins({top=2,bottom=2,left=2,right=2});

    obj.racasab = GUI.fromHandle(_obj_newObject("edit"));
    obj.racasab:setParent(obj.flowLayout65);
    obj.racasab:setName("racasab");
    obj.racasab:setType("number");
    obj.racasab:setField("racasab");
    obj.racasab:setMin(0);
    obj.racasab:setFontColor("white");
    obj.racasab:setReadOnly(false);
    obj.racasab:setCanFocus(true);
    obj.racasab:setHorzTextAlign("center");
    obj.racasab:setAlign("client");

    obj.flowLayout66 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout66:setParent(obj.tabelaAtributos);
    obj.flowLayout66:setName("flowLayout66");
    obj.flowLayout66:setWidth(100);
    obj.flowLayout66:setMargins({top=2,bottom=2,left=2,right=2});

    obj.treinosab = GUI.fromHandle(_obj_newObject("edit"));
    obj.treinosab:setParent(obj.flowLayout66);
    obj.treinosab:setName("treinosab");
    obj.treinosab:setType("number");
    obj.treinosab:setField("treinosab");
    obj.treinosab:setMin(0);
    obj.treinosab:setFontColor("white");
    obj.treinosab:setReadOnly(false);
    obj.treinosab:setCanFocus(true);
    obj.treinosab:setHorzTextAlign("center");
    obj.treinosab:setAlign("client");

    obj.flowLayout67 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout67:setParent(obj.tabelaAtributos);
    obj.flowLayout67:setName("flowLayout67");
    obj.flowLayout67:setWidth(100);
    obj.flowLayout67:setMargins({top=2,bottom=2,left=2,right=2});

    obj.outrosab = GUI.fromHandle(_obj_newObject("edit"));
    obj.outrosab:setParent(obj.flowLayout67);
    obj.outrosab:setName("outrosab");
    obj.outrosab:setType("number");
    obj.outrosab:setField("outrosab");
    obj.outrosab:setMin(0);
    obj.outrosab:setFontColor("white");
    obj.outrosab:setReadOnly(false);
    obj.outrosab:setCanFocus(true);
    obj.outrosab:setHorzTextAlign("center");
    obj.outrosab:setAlign("client");

    obj.flowLayout68 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout68:setParent(obj.tabelaAtributos);
    obj.flowLayout68:setName("flowLayout68");
    obj.flowLayout68:setWidth(100);
    obj.flowLayout68:setMargins({top=2,bottom=2,left=2,right=2});

    obj.basesab = GUI.fromHandle(_obj_newObject("edit"));
    obj.basesab:setParent(obj.flowLayout68);
    obj.basesab:setName("basesab");
    obj.basesab:setType("number");
    obj.basesab:setField("basesab");
    obj.basesab:setMin(0);
    obj.basesab:setFontColor("white");
    obj.basesab:setReadOnly(true);
    obj.basesab:setCanFocus(false);
    obj.basesab:setHorzTextAlign("center");
    obj.basesab:setAlign("client");

    obj.flowLayout69 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout69:setParent(obj.tabelaAtributos);
    obj.flowLayout69:setName("flowLayout69");
    obj.flowLayout69:setWidth(100);
    obj.flowLayout69:setMargins({top=2,bottom=2,left=2,right=2});

    obj.multiplicadorsab = GUI.fromHandle(_obj_newObject("edit"));
    obj.multiplicadorsab:setParent(obj.flowLayout69);
    obj.multiplicadorsab:setName("multiplicadorsab");
    obj.multiplicadorsab:setType("number");
    obj.multiplicadorsab:setField("multiplicadorsab");
    obj.multiplicadorsab:setMin(0);
    obj.multiplicadorsab:setFontColor("white");
    obj.multiplicadorsab:setReadOnly(false);
    obj.multiplicadorsab:setCanFocus(true);
    obj.multiplicadorsab:setHorzTextAlign("center");
    obj.multiplicadorsab:setAlign("client");

    obj.flowLayout70 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout70:setParent(obj.tabelaAtributos);
    obj.flowLayout70:setName("flowLayout70");
    obj.flowLayout70:setWidth(100);
    obj.flowLayout70:setMargins({top=2,bottom=2,left=2,right=2});

    obj.extrasab = GUI.fromHandle(_obj_newObject("edit"));
    obj.extrasab:setParent(obj.flowLayout70);
    obj.extrasab:setName("extrasab");
    obj.extrasab:setType("number");
    obj.extrasab:setField("extrasab");
    obj.extrasab:setMin(0);
    obj.extrasab:setFontColor("white");
    obj.extrasab:setReadOnly(false);
    obj.extrasab:setCanFocus(true);
    obj.extrasab:setHorzTextAlign("center");
    obj.extrasab:setAlign("client");

    obj.flowLayout71 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout71:setParent(obj.tabelaAtributos);
    obj.flowLayout71:setName("flowLayout71");
    obj.flowLayout71:setWidth(100);
    obj.flowLayout71:setMargins({top=2,bottom=2,left=2,right=2});

    obj.totalsab = GUI.fromHandle(_obj_newObject("edit"));
    obj.totalsab:setParent(obj.flowLayout71);
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

    obj.flowLayout72 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout72:setParent(obj.popupaba1);
    obj.flowLayout72:setWidth(150);
    obj.flowLayout72:setHeight(50);
    obj.flowLayout72:setPadding({top=5,bottom=5,left=5,right=5});
    obj.flowLayout72:setMaxControlsPerLine(2);
    obj.flowLayout72:setName("flowLayout72");

    obj.editaba1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.editaba1:setParent(obj.flowLayout72);
    obj.editaba1:setAlign("top");
    obj.editaba1:setName("editaba1");
    obj.editaba1:setField("editaba1");
    obj.editaba1:setFontSize(10);
    obj.editaba1:setTransparent(true);
    obj.editaba1:setVertTextAlign("center");
    obj.editaba1:setWidth(100);

    obj.okButtonaba1 = GUI.fromHandle(_obj_newObject("button"));
    obj.okButtonaba1:setParent(obj.flowLayout72);
    obj.okButtonaba1:setName("okButtonaba1");
    obj.okButtonaba1:setText("ok");
    obj.okButtonaba1:setWidth(25);
    obj.okButtonaba1:setFontSize(10);

    obj.horzLine1 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine1:setParent(obj.flowLayout72);
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

    obj.flowLayout73 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout73:setParent(obj.popupaba2);
    obj.flowLayout73:setWidth(150);
    obj.flowLayout73:setHeight(50);
    obj.flowLayout73:setPadding({top=5,bottom=5,left=5,right=5});
    obj.flowLayout73:setMaxControlsPerLine(2);
    obj.flowLayout73:setName("flowLayout73");

    obj.editaba2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.editaba2:setParent(obj.flowLayout73);
    obj.editaba2:setAlign("top");
    obj.editaba2:setName("editaba2");
    obj.editaba2:setField("editaba2");
    obj.editaba2:setFontSize(10);
    obj.editaba2:setTransparent(true);
    obj.editaba2:setVertTextAlign("center");
    obj.editaba2:setWidth(100);

    obj.okButtonaba2 = GUI.fromHandle(_obj_newObject("button"));
    obj.okButtonaba2:setParent(obj.flowLayout73);
    obj.okButtonaba2:setName("okButtonaba2");
    obj.okButtonaba2:setText("ok");
    obj.okButtonaba2:setWidth(25);
    obj.okButtonaba2:setFontSize(10);

    obj.horzLine2 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine2:setParent(obj.flowLayout73);
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

    obj.flowLayout74 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout74:setParent(obj.popupaba3);
    obj.flowLayout74:setWidth(150);
    obj.flowLayout74:setHeight(50);
    obj.flowLayout74:setPadding({top=5,bottom=5,left=5,right=5});
    obj.flowLayout74:setMaxControlsPerLine(2);
    obj.flowLayout74:setName("flowLayout74");

    obj.editaba3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.editaba3:setParent(obj.flowLayout74);
    obj.editaba3:setAlign("top");
    obj.editaba3:setName("editaba3");
    obj.editaba3:setField("editaba3");
    obj.editaba3:setFontSize(10);
    obj.editaba3:setTransparent(true);
    obj.editaba3:setVertTextAlign("center");
    obj.editaba3:setWidth(100);

    obj.okButtonaba3 = GUI.fromHandle(_obj_newObject("button"));
    obj.okButtonaba3:setParent(obj.flowLayout74);
    obj.okButtonaba3:setName("okButtonaba3");
    obj.okButtonaba3:setText("ok");
    obj.okButtonaba3:setWidth(25);
    obj.okButtonaba3:setFontSize(10);

    obj.horzLine3 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine3:setParent(obj.flowLayout74);
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

    obj.flowLayout75 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout75:setParent(obj.popupaba4);
    obj.flowLayout75:setWidth(150);
    obj.flowLayout75:setHeight(50);
    obj.flowLayout75:setPadding({top=5,bottom=5,left=5,right=5});
    obj.flowLayout75:setMaxControlsPerLine(2);
    obj.flowLayout75:setName("flowLayout75");

    obj.editaba4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.editaba4:setParent(obj.flowLayout75);
    obj.editaba4:setAlign("top");
    obj.editaba4:setName("editaba4");
    obj.editaba4:setField("editaba4");
    obj.editaba4:setFontSize(10);
    obj.editaba4:setTransparent(true);
    obj.editaba4:setVertTextAlign("center");
    obj.editaba4:setWidth(100);

    obj.okButtonaba4 = GUI.fromHandle(_obj_newObject("button"));
    obj.okButtonaba4:setParent(obj.flowLayout75);
    obj.okButtonaba4:setName("okButtonaba4");
    obj.okButtonaba4:setText("ok");
    obj.okButtonaba4:setWidth(25);
    obj.okButtonaba4:setFontSize(10);

    obj.horzLine4 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine4:setParent(obj.flowLayout75);
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

    obj.flowLayout76 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout76:setParent(obj.popupaba5);
    obj.flowLayout76:setWidth(150);
    obj.flowLayout76:setHeight(50);
    obj.flowLayout76:setPadding({top=5,bottom=5,left=5,right=5});
    obj.flowLayout76:setMaxControlsPerLine(2);
    obj.flowLayout76:setName("flowLayout76");

    obj.editaba5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.editaba5:setParent(obj.flowLayout76);
    obj.editaba5:setAlign("top");
    obj.editaba5:setName("editaba5");
    obj.editaba5:setField("editaba5");
    obj.editaba5:setFontSize(10);
    obj.editaba5:setTransparent(true);
    obj.editaba5:setVertTextAlign("center");
    obj.editaba5:setWidth(100);

    obj.okButtonaba5 = GUI.fromHandle(_obj_newObject("button"));
    obj.okButtonaba5:setParent(obj.flowLayout76);
    obj.okButtonaba5:setName("okButtonaba5");
    obj.okButtonaba5:setText("ok");
    obj.okButtonaba5:setWidth(25);
    obj.okButtonaba5:setFontSize(10);

    obj.horzLine5 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine5:setParent(obj.flowLayout76);
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

    obj.flowLayout77 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout77:setParent(obj.popupaba6);
    obj.flowLayout77:setWidth(150);
    obj.flowLayout77:setHeight(50);
    obj.flowLayout77:setPadding({top=5,bottom=5,left=5,right=5});
    obj.flowLayout77:setMaxControlsPerLine(2);
    obj.flowLayout77:setName("flowLayout77");

    obj.editaba6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.editaba6:setParent(obj.flowLayout77);
    obj.editaba6:setAlign("top");
    obj.editaba6:setName("editaba6");
    obj.editaba6:setField("editaba6");
    obj.editaba6:setFontSize(10);
    obj.editaba6:setTransparent(true);
    obj.editaba6:setVertTextAlign("center");
    obj.editaba6:setWidth(100);

    obj.okButtonaba6 = GUI.fromHandle(_obj_newObject("button"));
    obj.okButtonaba6:setParent(obj.flowLayout77);
    obj.okButtonaba6:setName("okButtonaba6");
    obj.okButtonaba6:setText("ok");
    obj.okButtonaba6:setWidth(25);
    obj.okButtonaba6:setFontSize(10);

    obj.horzLine6 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine6:setParent(obj.flowLayout77);
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

    obj.flowLayout78 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout78:setParent(obj.popupaba7);
    obj.flowLayout78:setWidth(150);
    obj.flowLayout78:setHeight(50);
    obj.flowLayout78:setPadding({top=5,bottom=5,left=5,right=5});
    obj.flowLayout78:setMaxControlsPerLine(2);
    obj.flowLayout78:setName("flowLayout78");

    obj.editaba7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.editaba7:setParent(obj.flowLayout78);
    obj.editaba7:setAlign("top");
    obj.editaba7:setName("editaba7");
    obj.editaba7:setField("editaba7");
    obj.editaba7:setFontSize(10);
    obj.editaba7:setTransparent(true);
    obj.editaba7:setVertTextAlign("center");
    obj.editaba7:setWidth(100);

    obj.okButtonaba7 = GUI.fromHandle(_obj_newObject("button"));
    obj.okButtonaba7:setParent(obj.flowLayout78);
    obj.okButtonaba7:setName("okButtonaba7");
    obj.okButtonaba7:setText("ok");
    obj.okButtonaba7:setWidth(25);
    obj.okButtonaba7:setFontSize(10);

    obj.horzLine7 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine7:setParent(obj.flowLayout78);
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

    obj.flowLayout79 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout79:setParent(obj.popupaba8);
    obj.flowLayout79:setWidth(150);
    obj.flowLayout79:setHeight(50);
    obj.flowLayout79:setPadding({top=5,bottom=5,left=5,right=5});
    obj.flowLayout79:setMaxControlsPerLine(2);
    obj.flowLayout79:setName("flowLayout79");

    obj.editaba8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.editaba8:setParent(obj.flowLayout79);
    obj.editaba8:setAlign("top");
    obj.editaba8:setName("editaba8");
    obj.editaba8:setField("editaba8");
    obj.editaba8:setFontSize(10);
    obj.editaba8:setTransparent(true);
    obj.editaba8:setVertTextAlign("center");
    obj.editaba8:setWidth(100);

    obj.okButtonaba8 = GUI.fromHandle(_obj_newObject("button"));
    obj.okButtonaba8:setParent(obj.flowLayout79);
    obj.okButtonaba8:setName("okButtonaba8");
    obj.okButtonaba8:setText("ok");
    obj.okButtonaba8:setWidth(25);
    obj.okButtonaba8:setFontSize(10);

    obj.horzLine8 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine8:setParent(obj.flowLayout79);
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

    obj.flowLayout80 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout80:setParent(obj.popupaba9);
    obj.flowLayout80:setWidth(150);
    obj.flowLayout80:setHeight(50);
    obj.flowLayout80:setPadding({top=5,bottom=5,left=5,right=5});
    obj.flowLayout80:setMaxControlsPerLine(2);
    obj.flowLayout80:setName("flowLayout80");

    obj.editaba9 = GUI.fromHandle(_obj_newObject("edit"));
    obj.editaba9:setParent(obj.flowLayout80);
    obj.editaba9:setAlign("top");
    obj.editaba9:setName("editaba9");
    obj.editaba9:setField("editaba9");
    obj.editaba9:setFontSize(10);
    obj.editaba9:setTransparent(true);
    obj.editaba9:setVertTextAlign("center");
    obj.editaba9:setWidth(100);

    obj.okButtonaba9 = GUI.fromHandle(_obj_newObject("button"));
    obj.okButtonaba9:setParent(obj.flowLayout80);
    obj.okButtonaba9:setName("okButtonaba9");
    obj.okButtonaba9:setText("ok");
    obj.okButtonaba9:setWidth(25);
    obj.okButtonaba9:setFontSize(10);

    obj.horzLine9 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine9:setParent(obj.flowLayout80);
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

    obj.flowLayout81 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout81:setParent(obj.popupaba10);
    obj.flowLayout81:setWidth(150);
    obj.flowLayout81:setHeight(50);
    obj.flowLayout81:setPadding({top=5,bottom=5,left=5,right=5});
    obj.flowLayout81:setMaxControlsPerLine(2);
    obj.flowLayout81:setName("flowLayout81");

    obj.editaba10 = GUI.fromHandle(_obj_newObject("edit"));
    obj.editaba10:setParent(obj.flowLayout81);
    obj.editaba10:setAlign("top");
    obj.editaba10:setName("editaba10");
    obj.editaba10:setField("editaba10");
    obj.editaba10:setFontSize(10);
    obj.editaba10:setTransparent(true);
    obj.editaba10:setVertTextAlign("center");
    obj.editaba10:setWidth(100);

    obj.okButtonaba10 = GUI.fromHandle(_obj_newObject("button"));
    obj.okButtonaba10:setParent(obj.flowLayout81);
    obj.okButtonaba10:setName("okButtonaba10");
    obj.okButtonaba10:setText("ok");
    obj.okButtonaba10:setWidth(25);
    obj.okButtonaba10:setFontSize(10);

    obj.horzLine10 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine10:setParent(obj.flowLayout81);
    obj.horzLine10:setAlign("top");
    obj.horzLine10:setStrokeColor("#FFFFFF50");
    obj.horzLine10:setStrokeSize(1);
    obj.horzLine10:setWidth(100);
    obj.horzLine10:setName("horzLine10");

    obj._e_event0 = obj.botao1:addEventListener("onClick",
        function (_)
            alert(self.tabelaAtributos.width..' : '..self.tabelaAtributos.height)
        end, obj);

    obj._e_event1 = obj.button1:addEventListener("onClick",
        function (_)
            alert(self.popupAtributos.width..' : '..self.popupAtributos.height)
        end, obj);

    obj._e_event2 = obj.button2:addEventListener("onClick",
        function (_)
            self.popupAtributos:show()
        end, obj);

    obj._e_event3 = obj.dataLink1:addEventListener("onChange",
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

    obj._e_event4 = obj.dataLink2:addEventListener("onChange",
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

    obj._e_event5 = obj.dataLink3:addEventListener("onChange",
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

    obj._e_event6 = obj.dataLink4:addEventListener("onChange",
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

    obj._e_event7 = obj.dataLink5:addEventListener("onChange",
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

    obj._e_event8 = obj.dataLink6:addEventListener("onChange",
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

    obj._e_event9 = obj.abaVaziaaba1:addEventListener("onDblClick",
        function (_)
            self.popupaba1:show('bottomCenter',self.abaaba1)
                                    self.editaba1:setFocus();
        end, obj);

    obj._e_event10 = obj.editaba1:addEventListener("onKeyDown",
        function (_, event)
            
                                    if event.keyCode == 13 then
                                        self.okButtonaba1:setFocus();
                                        self.abaVaziaaba1.title = sheet.editaba1;
                                        self.popupaba1:close();
                                        sheet.editaba1 = '';
                                    end
        end, obj);

    obj._e_event11 = obj.okButtonaba1:addEventListener("onClick",
        function (_)
            self.abaVaziaaba1.title = sheet.editaba1;
                                               self.popupaba1:close();
                                               sheet.editaba1 = '';
        end, obj);

    obj._e_event12 = obj.abaVaziaaba2:addEventListener("onDblClick",
        function (_)
            self.popupaba2:show('bottomCenter',self.abaaba2)
                                    self.editaba2:setFocus();
        end, obj);

    obj._e_event13 = obj.editaba2:addEventListener("onKeyDown",
        function (_, event)
            
                                    if event.keyCode == 13 then
                                        self.okButtonaba2:setFocus();
                                        self.abaVaziaaba2.title = sheet.editaba2;
                                        self.popupaba2:close();
                                        sheet.editaba2 = '';
                                    end
        end, obj);

    obj._e_event14 = obj.okButtonaba2:addEventListener("onClick",
        function (_)
            self.abaVaziaaba2.title = sheet.editaba2;
                                               self.popupaba2:close();
                                               sheet.editaba2 = '';
        end, obj);

    obj._e_event15 = obj.abaVaziaaba3:addEventListener("onDblClick",
        function (_)
            self.popupaba3:show('bottomCenter',self.abaaba3)
                                    self.editaba3:setFocus();
        end, obj);

    obj._e_event16 = obj.editaba3:addEventListener("onKeyDown",
        function (_, event)
            
                                    if event.keyCode == 13 then
                                        self.okButtonaba3:setFocus();
                                        self.abaVaziaaba3.title = sheet.editaba3;
                                        self.popupaba3:close();
                                        sheet.editaba3 = '';
                                    end
        end, obj);

    obj._e_event17 = obj.okButtonaba3:addEventListener("onClick",
        function (_)
            self.abaVaziaaba3.title = sheet.editaba3;
                                               self.popupaba3:close();
                                               sheet.editaba3 = '';
        end, obj);

    obj._e_event18 = obj.abaVaziaaba4:addEventListener("onDblClick",
        function (_)
            self.popupaba4:show('bottomCenter',self.abaaba4)
                                    self.editaba4:setFocus();
        end, obj);

    obj._e_event19 = obj.editaba4:addEventListener("onKeyDown",
        function (_, event)
            
                                    if event.keyCode == 13 then
                                        self.okButtonaba4:setFocus();
                                        self.abaVaziaaba4.title = sheet.editaba4;
                                        self.popupaba4:close();
                                        sheet.editaba4 = '';
                                    end
        end, obj);

    obj._e_event20 = obj.okButtonaba4:addEventListener("onClick",
        function (_)
            self.abaVaziaaba4.title = sheet.editaba4;
                                               self.popupaba4:close();
                                               sheet.editaba4 = '';
        end, obj);

    obj._e_event21 = obj.abaVaziaaba5:addEventListener("onDblClick",
        function (_)
            self.popupaba5:show('bottomCenter',self.abaaba5)
                                    self.editaba5:setFocus();
        end, obj);

    obj._e_event22 = obj.editaba5:addEventListener("onKeyDown",
        function (_, event)
            
                                    if event.keyCode == 13 then
                                        self.okButtonaba5:setFocus();
                                        self.abaVaziaaba5.title = sheet.editaba5;
                                        self.popupaba5:close();
                                        sheet.editaba5 = '';
                                    end
        end, obj);

    obj._e_event23 = obj.okButtonaba5:addEventListener("onClick",
        function (_)
            self.abaVaziaaba5.title = sheet.editaba5;
                                               self.popupaba5:close();
                                               sheet.editaba5 = '';
        end, obj);

    obj._e_event24 = obj.abaVaziaaba6:addEventListener("onDblClick",
        function (_)
            self.popupaba6:show('bottomCenter',self.abaaba6)
                                    self.editaba6:setFocus();
        end, obj);

    obj._e_event25 = obj.editaba6:addEventListener("onKeyDown",
        function (_, event)
            
                                    if event.keyCode == 13 then
                                        self.okButtonaba6:setFocus();
                                        self.abaVaziaaba6.title = sheet.editaba6;
                                        self.popupaba6:close();
                                        sheet.editaba6 = '';
                                    end
        end, obj);

    obj._e_event26 = obj.okButtonaba6:addEventListener("onClick",
        function (_)
            self.abaVaziaaba6.title = sheet.editaba6;
                                               self.popupaba6:close();
                                               sheet.editaba6 = '';
        end, obj);

    obj._e_event27 = obj.abaVaziaaba7:addEventListener("onDblClick",
        function (_)
            self.popupaba7:show('bottomCenter',self.abaaba7)
                                    self.editaba7:setFocus();
        end, obj);

    obj._e_event28 = obj.editaba7:addEventListener("onKeyDown",
        function (_, event)
            
                                    if event.keyCode == 13 then
                                        self.okButtonaba7:setFocus();
                                        self.abaVaziaaba7.title = sheet.editaba7;
                                        self.popupaba7:close();
                                        sheet.editaba7 = '';
                                    end
        end, obj);

    obj._e_event29 = obj.okButtonaba7:addEventListener("onClick",
        function (_)
            self.abaVaziaaba7.title = sheet.editaba7;
                                               self.popupaba7:close();
                                               sheet.editaba7 = '';
        end, obj);

    obj._e_event30 = obj.abaVaziaaba8:addEventListener("onDblClick",
        function (_)
            self.popupaba8:show('bottomCenter',self.abaaba8)
                                    self.editaba8:setFocus();
        end, obj);

    obj._e_event31 = obj.editaba8:addEventListener("onKeyDown",
        function (_, event)
            
                                    if event.keyCode == 13 then
                                        self.okButtonaba8:setFocus();
                                        self.abaVaziaaba8.title = sheet.editaba8;
                                        self.popupaba8:close();
                                        sheet.editaba8 = '';
                                    end
        end, obj);

    obj._e_event32 = obj.okButtonaba8:addEventListener("onClick",
        function (_)
            self.abaVaziaaba8.title = sheet.editaba8;
                                               self.popupaba8:close();
                                               sheet.editaba8 = '';
        end, obj);

    obj._e_event33 = obj.abaVaziaaba9:addEventListener("onDblClick",
        function (_)
            self.popupaba9:show('bottomCenter',self.abaaba9)
                                    self.editaba9:setFocus();
        end, obj);

    obj._e_event34 = obj.editaba9:addEventListener("onKeyDown",
        function (_, event)
            
                                    if event.keyCode == 13 then
                                        self.okButtonaba9:setFocus();
                                        self.abaVaziaaba9.title = sheet.editaba9;
                                        self.popupaba9:close();
                                        sheet.editaba9 = '';
                                    end
        end, obj);

    obj._e_event35 = obj.okButtonaba9:addEventListener("onClick",
        function (_)
            self.abaVaziaaba9.title = sheet.editaba9;
                                               self.popupaba9:close();
                                               sheet.editaba9 = '';
        end, obj);

    obj._e_event36 = obj.abaVaziaaba10:addEventListener("onDblClick",
        function (_)
            self.popupaba10:show('bottomCenter',self.abaaba10)
                                    self.editaba10:setFocus();
        end, obj);

    obj._e_event37 = obj.editaba10:addEventListener("onKeyDown",
        function (_, event)
            
                                    if event.keyCode == 13 then
                                        self.okButtonaba10:setFocus();
                                        self.abaVaziaaba10.title = sheet.editaba10;
                                        self.popupaba10:close();
                                        sheet.editaba10 = '';
                                    end
        end, obj);

    obj._e_event38 = obj.okButtonaba10:addEventListener("onClick",
        function (_)
            self.abaVaziaaba10.title = sheet.editaba10;
                                               self.popupaba10:close();
                                               sheet.editaba10 = '';
        end, obj);

    function obj:_releaseEvents()
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

        if self.flowLayout37 ~= nil then self.flowLayout37:destroy(); self.flowLayout37 = nil; end;
        if self.baseint ~= nil then self.baseint:destroy(); self.baseint = nil; end;
        if self.flowLayout22 ~= nil then self.flowLayout22:destroy(); self.flowLayout22 = nil; end;
        if self.flowLayout24 ~= nil then self.flowLayout24:destroy(); self.flowLayout24 = nil; end;
        if self.horzLine7 ~= nil then self.horzLine7:destroy(); self.horzLine7 = nil; end;
        if self.flowLayout65 ~= nil then self.flowLayout65:destroy(); self.flowLayout65 = nil; end;
        if self.treinodex ~= nil then self.treinodex:destroy(); self.treinodex = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.flowLayout47 ~= nil then self.flowLayout47:destroy(); self.flowLayout47 = nil; end;
        if self.outrocar ~= nil then self.outrocar:destroy(); self.outrocar = nil; end;
        if self.flowLayout19 ~= nil then self.flowLayout19:destroy(); self.flowLayout19 = nil; end;
        if self.flowLayout13 ~= nil then self.flowLayout13:destroy(); self.flowLayout13 = nil; end;
        if self.flowLayout1 ~= nil then self.flowLayout1:destroy(); self.flowLayout1 = nil; end;
        if self.richEdit10 ~= nil then self.richEdit10:destroy(); self.richEdit10 = nil; end;
        if self.flowPart1 ~= nil then self.flowPart1:destroy(); self.flowPart1 = nil; end;
        if self.flowLayout67 ~= nil then self.flowLayout67:destroy(); self.flowLayout67 = nil; end;
        if self.horzLine10 ~= nil then self.horzLine10:destroy(); self.horzLine10 = nil; end;
        if self.flowLayout43 ~= nil then self.flowLayout43:destroy(); self.flowLayout43 = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
        if self.flowLayout5 ~= nil then self.flowLayout5:destroy(); self.flowLayout5 = nil; end;
        if self.editaba2 ~= nil then self.editaba2:destroy(); self.editaba2 = nil; end;
        if self.abaVaziaaba1 ~= nil then self.abaVaziaaba1:destroy(); self.abaVaziaaba1 = nil; end;
        if self.flowLayout74 ~= nil then self.flowLayout74:destroy(); self.flowLayout74 = nil; end;
        if self.treinoint ~= nil then self.treinoint:destroy(); self.treinoint = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.flowLayout73 ~= nil then self.flowLayout73:destroy(); self.flowLayout73 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.flowLayout78 ~= nil then self.flowLayout78:destroy(); self.flowLayout78 = nil; end;
        if self.flowLayout16 ~= nil then self.flowLayout16:destroy(); self.flowLayout16 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.flowLayout64 ~= nil then self.flowLayout64:destroy(); self.flowLayout64 = nil; end;
        if self.popupaba10 ~= nil then self.popupaba10:destroy(); self.popupaba10 = nil; end;
        if self.flowLayout44 ~= nil then self.flowLayout44:destroy(); self.flowLayout44 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.nivelfor ~= nil then self.nivelfor:destroy(); self.nivelfor = nil; end;
        if self.basecon ~= nil then self.basecon:destroy(); self.basecon = nil; end;
        if self.flowLayout30 ~= nil then self.flowLayout30:destroy(); self.flowLayout30 = nil; end;
        if self.scrollBox9 ~= nil then self.scrollBox9:destroy(); self.scrollBox9 = nil; end;
        if self.flowLayout52 ~= nil then self.flowLayout52:destroy(); self.flowLayout52 = nil; end;
        if self.scrollBox2 ~= nil then self.scrollBox2:destroy(); self.scrollBox2 = nil; end;
        if self.flowLayout58 ~= nil then self.flowLayout58:destroy(); self.flowLayout58 = nil; end;
        if self.basecar ~= nil then self.basecar:destroy(); self.basecar = nil; end;
        if self.flowLayout39 ~= nil then self.flowLayout39:destroy(); self.flowLayout39 = nil; end;
        if self.editaba3 ~= nil then self.editaba3:destroy(); self.editaba3 = nil; end;
        if self.flowLayout23 ~= nil then self.flowLayout23:destroy(); self.flowLayout23 = nil; end;
        if self.abaVaziaaba10 ~= nil then self.abaVaziaaba10:destroy(); self.abaVaziaaba10 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.flowLayout29 ~= nil then self.flowLayout29:destroy(); self.flowLayout29 = nil; end;
        if self.racaint ~= nil then self.racaint:destroy(); self.racaint = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.racacar ~= nil then self.racacar:destroy(); self.racacar = nil; end;
        if self.botao1 ~= nil then self.botao1:destroy(); self.botao1 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.okButtonaba8 ~= nil then self.okButtonaba8:destroy(); self.okButtonaba8 = nil; end;
        if self.okButtonaba5 ~= nil then self.okButtonaba5:destroy(); self.okButtonaba5 = nil; end;
        if self.flowLayout33 ~= nil then self.flowLayout33:destroy(); self.flowLayout33 = nil; end;
        if self.flowLayout46 ~= nil then self.flowLayout46:destroy(); self.flowLayout46 = nil; end;
        if self.flowLayout35 ~= nil then self.flowLayout35:destroy(); self.flowLayout35 = nil; end;
        if self.editaba9 ~= nil then self.editaba9:destroy(); self.editaba9 = nil; end;
        if self.extrafor ~= nil then self.extrafor:destroy(); self.extrafor = nil; end;
        if self.editaba5 ~= nil then self.editaba5:destroy(); self.editaba5 = nil; end;
        if self.flowLayout63 ~= nil then self.flowLayout63:destroy(); self.flowLayout63 = nil; end;
        if self.flowLayout68 ~= nil then self.flowLayout68:destroy(); self.flowLayout68 = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.flowLayout49 ~= nil then self.flowLayout49:destroy(); self.flowLayout49 = nil; end;
        if self.flowLayout69 ~= nil then self.flowLayout69:destroy(); self.flowLayout69 = nil; end;
        if self.flowLayout14 ~= nil then self.flowLayout14:destroy(); self.flowLayout14 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.flowLayout31 ~= nil then self.flowLayout31:destroy(); self.flowLayout31 = nil; end;
        if self.multiplicadorfor ~= nil then self.multiplicadorfor:destroy(); self.multiplicadorfor = nil; end;
        if self.racafor ~= nil then self.racafor:destroy(); self.racafor = nil; end;
        if self.flowLayout40 ~= nil then self.flowLayout40:destroy(); self.flowLayout40 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.dataLink6 ~= nil then self.dataLink6:destroy(); self.dataLink6 = nil; end;
        if self.horzLine1 ~= nil then self.horzLine1:destroy(); self.horzLine1 = nil; end;
        if self.abaVaziaaba4 ~= nil then self.abaVaziaaba4:destroy(); self.abaVaziaaba4 = nil; end;
        if self.okButtonaba1 ~= nil then self.okButtonaba1:destroy(); self.okButtonaba1 = nil; end;
        if self.treinofor ~= nil then self.treinofor:destroy(); self.treinofor = nil; end;
        if self.classefor ~= nil then self.classefor:destroy(); self.classefor = nil; end;
        if self.abaAtributos ~= nil then self.abaAtributos:destroy(); self.abaAtributos = nil; end;
        if self.abaVaziaaba6 ~= nil then self.abaVaziaaba6:destroy(); self.abaVaziaaba6 = nil; end;
        if self.editaba10 ~= nil then self.editaba10:destroy(); self.editaba10 = nil; end;
        if self.richEdit1 ~= nil then self.richEdit1:destroy(); self.richEdit1 = nil; end;
        if self.classecar ~= nil then self.classecar:destroy(); self.classecar = nil; end;
        if self.abaVaziaaba7 ~= nil then self.abaVaziaaba7:destroy(); self.abaVaziaaba7 = nil; end;
        if self.scrollBox3 ~= nil then self.scrollBox3:destroy(); self.scrollBox3 = nil; end;
        if self.horzLine3 ~= nil then self.horzLine3:destroy(); self.horzLine3 = nil; end;
        if self.flowLayout6 ~= nil then self.flowLayout6:destroy(); self.flowLayout6 = nil; end;
        if self.flowLayout76 ~= nil then self.flowLayout76:destroy(); self.flowLayout76 = nil; end;
        if self.pgcPrincipal ~= nil then self.pgcPrincipal:destroy(); self.pgcPrincipal = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.richEdit3 ~= nil then self.richEdit3:destroy(); self.richEdit3 = nil; end;
        if self.totalint ~= nil then self.totalint:destroy(); self.totalint = nil; end;
        if self.flowLayout60 ~= nil then self.flowLayout60:destroy(); self.flowLayout60 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.racadex ~= nil then self.racadex:destroy(); self.racadex = nil; end;
        if self.popupaba7 ~= nil then self.popupaba7:destroy(); self.popupaba7 = nil; end;
        if self.popupaba9 ~= nil then self.popupaba9:destroy(); self.popupaba9 = nil; end;
        if self.flowLayout71 ~= nil then self.flowLayout71:destroy(); self.flowLayout71 = nil; end;
        if self.outrodex ~= nil then self.outrodex:destroy(); self.outrodex = nil; end;
        if self.totalsab ~= nil then self.totalsab:destroy(); self.totalsab = nil; end;
        if self.multiplicadordex ~= nil then self.multiplicadordex:destroy(); self.multiplicadordex = nil; end;
        if self.richEdit2 ~= nil then self.richEdit2:destroy(); self.richEdit2 = nil; end;
        if self.scrollBox5 ~= nil then self.scrollBox5:destroy(); self.scrollBox5 = nil; end;
        if self.richEdit8 ~= nil then self.richEdit8:destroy(); self.richEdit8 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.nivelint ~= nil then self.nivelint:destroy(); self.nivelint = nil; end;
        if self.flowLayout8 ~= nil then self.flowLayout8:destroy(); self.flowLayout8 = nil; end;
        if self.r ~= nil then self.r:destroy(); self.r = nil; end;
        if self.flowLayout70 ~= nil then self.flowLayout70:destroy(); self.flowLayout70 = nil; end;
        if self.flowLayout48 ~= nil then self.flowLayout48:destroy(); self.flowLayout48 = nil; end;
        if self.rectangle11 ~= nil then self.rectangle11:destroy(); self.rectangle11 = nil; end;
        if self.totalfor ~= nil then self.totalfor:destroy(); self.totalfor = nil; end;
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
        if self.flowLayout18 ~= nil then self.flowLayout18:destroy(); self.flowLayout18 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.abaVaziaaba2 ~= nil then self.abaVaziaaba2:destroy(); self.abaVaziaaba2 = nil; end;
        if self.treinocar ~= nil then self.treinocar:destroy(); self.treinocar = nil; end;
        if self.outroint ~= nil then self.outroint:destroy(); self.outroint = nil; end;
        if self.flowLayout51 ~= nil then self.flowLayout51:destroy(); self.flowLayout51 = nil; end;
        if self.flowLayout15 ~= nil then self.flowLayout15:destroy(); self.flowLayout15 = nil; end;
        if self.flowLayout12 ~= nil then self.flowLayout12:destroy(); self.flowLayout12 = nil; end;
        if self.flowLayout62 ~= nil then self.flowLayout62:destroy(); self.flowLayout62 = nil; end;
        if self.popupAtributos ~= nil then self.popupAtributos:destroy(); self.popupAtributos = nil; end;
        if self.flowLayout41 ~= nil then self.flowLayout41:destroy(); self.flowLayout41 = nil; end;
        if self.niveldex ~= nil then self.niveldex:destroy(); self.niveldex = nil; end;
        if self.racasab ~= nil then self.racasab:destroy(); self.racasab = nil; end;
        if self.multiplicadorcon ~= nil then self.multiplicadorcon:destroy(); self.multiplicadorcon = nil; end;
        if self.dataLink5 ~= nil then self.dataLink5:destroy(); self.dataLink5 = nil; end;
        if self.basesab ~= nil then self.basesab:destroy(); self.basesab = nil; end;
        if self.horzLine2 ~= nil then self.horzLine2:destroy(); self.horzLine2 = nil; end;
        if self.popupaba8 ~= nil then self.popupaba8:destroy(); self.popupaba8 = nil; end;
        if self.rectangle10 ~= nil then self.rectangle10:destroy(); self.rectangle10 = nil; end;
        if self.flowLayout61 ~= nil then self.flowLayout61:destroy(); self.flowLayout61 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.flowLayout55 ~= nil then self.flowLayout55:destroy(); self.flowLayout55 = nil; end;
        if self.richEdit4 ~= nil then self.richEdit4:destroy(); self.richEdit4 = nil; end;
        if self.totalcar ~= nil then self.totalcar:destroy(); self.totalcar = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.flowLayout79 ~= nil then self.flowLayout79:destroy(); self.flowLayout79 = nil; end;
        if self.popupaba5 ~= nil then self.popupaba5:destroy(); self.popupaba5 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.nivelcon ~= nil then self.nivelcon:destroy(); self.nivelcon = nil; end;
        if self.horzLine8 ~= nil then self.horzLine8:destroy(); self.horzLine8 = nil; end;
        if self.popupaba1 ~= nil then self.popupaba1:destroy(); self.popupaba1 = nil; end;
        if self.flowLayout20 ~= nil then self.flowLayout20:destroy(); self.flowLayout20 = nil; end;
        if self.editaba4 ~= nil then self.editaba4:destroy(); self.editaba4 = nil; end;
        if self.abaVaziaaba8 ~= nil then self.abaVaziaaba8:destroy(); self.abaVaziaaba8 = nil; end;
        if self.multiplicadorint ~= nil then self.multiplicadorint:destroy(); self.multiplicadorint = nil; end;
        if self.editaba6 ~= nil then self.editaba6:destroy(); self.editaba6 = nil; end;
        if self.okButtonaba3 ~= nil then self.okButtonaba3:destroy(); self.okButtonaba3 = nil; end;
        if self.horzLine5 ~= nil then self.horzLine5:destroy(); self.horzLine5 = nil; end;
        if self.flowLayout25 ~= nil then self.flowLayout25:destroy(); self.flowLayout25 = nil; end;
        if self.flowLayout26 ~= nil then self.flowLayout26:destroy(); self.flowLayout26 = nil; end;
        if self.nivelsab ~= nil then self.nivelsab:destroy(); self.nivelsab = nil; end;
        if self.tabelaAtributos ~= nil then self.tabelaAtributos:destroy(); self.tabelaAtributos = nil; end;
        if self.flowLayout54 ~= nil then self.flowLayout54:destroy(); self.flowLayout54 = nil; end;
        if self.flowLayout80 ~= nil then self.flowLayout80:destroy(); self.flowLayout80 = nil; end;
        if self.extradex ~= nil then self.extradex:destroy(); self.extradex = nil; end;
        if self.flowLayout7 ~= nil then self.flowLayout7:destroy(); self.flowLayout7 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.basefor ~= nil then self.basefor:destroy(); self.basefor = nil; end;
        if self.okButtonaba9 ~= nil then self.okButtonaba9:destroy(); self.okButtonaba9 = nil; end;
        if self.okButtonaba6 ~= nil then self.okButtonaba6:destroy(); self.okButtonaba6 = nil; end;
        if self.okButtonaba2 ~= nil then self.okButtonaba2:destroy(); self.okButtonaba2 = nil; end;
        if self.flowLayout9 ~= nil then self.flowLayout9:destroy(); self.flowLayout9 = nil; end;
        if self.extracon ~= nil then self.extracon:destroy(); self.extracon = nil; end;
        if self.flowLayout10 ~= nil then self.flowLayout10:destroy(); self.flowLayout10 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.flowLayout50 ~= nil then self.flowLayout50:destroy(); self.flowLayout50 = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.flowLayout17 ~= nil then self.flowLayout17:destroy(); self.flowLayout17 = nil; end;
        if self.outrofor ~= nil then self.outrofor:destroy(); self.outrofor = nil; end;
        if self.flowLayout53 ~= nil then self.flowLayout53:destroy(); self.flowLayout53 = nil; end;
        if self.horzLine9 ~= nil then self.horzLine9:destroy(); self.horzLine9 = nil; end;
        if self.abaVaziaaba3 ~= nil then self.abaVaziaaba3:destroy(); self.abaVaziaaba3 = nil; end;
        if self.flowLayout42 ~= nil then self.flowLayout42:destroy(); self.flowLayout42 = nil; end;
        if self.flowLayout21 ~= nil then self.flowLayout21:destroy(); self.flowLayout21 = nil; end;
        if self.editaba8 ~= nil then self.editaba8:destroy(); self.editaba8 = nil; end;
        if self.okButtonaba7 ~= nil then self.okButtonaba7:destroy(); self.okButtonaba7 = nil; end;
        if self.treinocon ~= nil then self.treinocon:destroy(); self.treinocon = nil; end;
        if self.flowLayout27 ~= nil then self.flowLayout27:destroy(); self.flowLayout27 = nil; end;
        if self.flowLayout11 ~= nil then self.flowLayout11:destroy(); self.flowLayout11 = nil; end;
        if self.extrasab ~= nil then self.extrasab:destroy(); self.extrasab = nil; end;
        if self.okButtonaba10 ~= nil then self.okButtonaba10:destroy(); self.okButtonaba10 = nil; end;
        if self.flowLayout4 ~= nil then self.flowLayout4:destroy(); self.flowLayout4 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.popupaba2 ~= nil then self.popupaba2:destroy(); self.popupaba2 = nil; end;
        if self.scrollBox10 ~= nil then self.scrollBox10:destroy(); self.scrollBox10 = nil; end;
        if self.classeint ~= nil then self.classeint:destroy(); self.classeint = nil; end;
        if self.totalcon ~= nil then self.totalcon:destroy(); self.totalcon = nil; end;
        if self.totaldex ~= nil then self.totaldex:destroy(); self.totaldex = nil; end;
        if self.extraint ~= nil then self.extraint:destroy(); self.extraint = nil; end;
        if self.editaba1 ~= nil then self.editaba1:destroy(); self.editaba1 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.nivelcar ~= nil then self.nivelcar:destroy(); self.nivelcar = nil; end;
        if self.flowLayout2 ~= nil then self.flowLayout2:destroy(); self.flowLayout2 = nil; end;
        if self.flowLayout66 ~= nil then self.flowLayout66:destroy(); self.flowLayout66 = nil; end;
        if self.treinosab ~= nil then self.treinosab:destroy(); self.treinosab = nil; end;
        if self.flowLayout34 ~= nil then self.flowLayout34:destroy(); self.flowLayout34 = nil; end;
        if self.flowLayout45 ~= nil then self.flowLayout45:destroy(); self.flowLayout45 = nil; end;
        if self.scrollBox6 ~= nil then self.scrollBox6:destroy(); self.scrollBox6 = nil; end;
        if self.basedex ~= nil then self.basedex:destroy(); self.basedex = nil; end;
        if self.flowLayout56 ~= nil then self.flowLayout56:destroy(); self.flowLayout56 = nil; end;
        if self.classedex ~= nil then self.classedex:destroy(); self.classedex = nil; end;
        if self.racacon ~= nil then self.racacon:destroy(); self.racacon = nil; end;
        if self.richEdit7 ~= nil then self.richEdit7:destroy(); self.richEdit7 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.popupaba4 ~= nil then self.popupaba4:destroy(); self.popupaba4 = nil; end;
        if self.richEdit6 ~= nil then self.richEdit6:destroy(); self.richEdit6 = nil; end;
        if self.flowLayout36 ~= nil then self.flowLayout36:destroy(); self.flowLayout36 = nil; end;
        if self.horzLine4 ~= nil then self.horzLine4:destroy(); self.horzLine4 = nil; end;
        if self.flowLayout38 ~= nil then self.flowLayout38:destroy(); self.flowLayout38 = nil; end;
        if self.popupaba3 ~= nil then self.popupaba3:destroy(); self.popupaba3 = nil; end;
        if self.richEdit5 ~= nil then self.richEdit5:destroy(); self.richEdit5 = nil; end;
        if self.popupaba6 ~= nil then self.popupaba6:destroy(); self.popupaba6 = nil; end;
        if self.multiplicadorsab ~= nil then self.multiplicadorsab:destroy(); self.multiplicadorsab = nil; end;
        if self.flowLayout28 ~= nil then self.flowLayout28:destroy(); self.flowLayout28 = nil; end;
        if self.flowLayout75 ~= nil then self.flowLayout75:destroy(); self.flowLayout75 = nil; end;
        if self.outrocon ~= nil then self.outrocon:destroy(); self.outrocon = nil; end;
        if self.classecon ~= nil then self.classecon:destroy(); self.classecon = nil; end;
        if self.flowLayout81 ~= nil then self.flowLayout81:destroy(); self.flowLayout81 = nil; end;
        if self.classesab ~= nil then self.classesab:destroy(); self.classesab = nil; end;
        if self.extracar ~= nil then self.extracar:destroy(); self.extracar = nil; end;
        if self.scrollBox4 ~= nil then self.scrollBox4:destroy(); self.scrollBox4 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.flowLayout59 ~= nil then self.flowLayout59:destroy(); self.flowLayout59 = nil; end;
        if self.abaVaziaaba9 ~= nil then self.abaVaziaaba9:destroy(); self.abaVaziaaba9 = nil; end;
        if self.editaba7 ~= nil then self.editaba7:destroy(); self.editaba7 = nil; end;
        if self.outrosab ~= nil then self.outrosab:destroy(); self.outrosab = nil; end;
        if self.horzLine6 ~= nil then self.horzLine6:destroy(); self.horzLine6 = nil; end;
        if self.multiplicadorcar ~= nil then self.multiplicadorcar:destroy(); self.multiplicadorcar = nil; end;
        if self.richEdit9 ~= nil then self.richEdit9:destroy(); self.richEdit9 = nil; end;
        if self.flowLayout72 ~= nil then self.flowLayout72:destroy(); self.flowLayout72 = nil; end;
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
