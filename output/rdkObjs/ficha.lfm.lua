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
    obj.flowLayout2:setHeight(200);
    obj.flowLayout2:setMinWidth(1000);
    obj.flowLayout2:setMinScaledWidth(500);
    obj.flowLayout2:setHorzAlign("center");
    obj.flowLayout2:setName("flowLayout2");

    obj.flowPart1 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart1:setParent(obj.flowLayout2);
    obj.flowPart1:setWidth(96);
    obj.flowPart1:setMargins({top=2,bottom=2,left=2,right=2});
    obj.flowPart1:setName("flowPart1");

    obj.rectangle2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.flowPart1);
    obj.rectangle2:setAlign("client");
    obj.rectangle2:setColor("red");
    obj.rectangle2:setName("rectangle2");

    obj.flowPart2 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart2:setParent(obj.flowLayout2);
    obj.flowPart2:setWidth(96);
    obj.flowPart2:setMargins({top=2,bottom=2,left=2,right=2});
    obj.flowPart2:setName("flowPart2");

    obj.rectangle3 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.flowPart2);
    obj.rectangle3:setAlign("client");
    obj.rectangle3:setColor("white");
    obj.rectangle3:setName("rectangle3");

    obj.flowPart3 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart3:setParent(obj.flowLayout2);
    obj.flowPart3:setWidth(96);
    obj.flowPart3:setMargins({top=2,bottom=2,left=2,right=2});
    obj.flowPart3:setName("flowPart3");

    obj.rectangle4 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.flowPart3);
    obj.rectangle4:setAlign("client");
    obj.rectangle4:setColor("blue");
    obj.rectangle4:setName("rectangle4");

    obj.flowPart4 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart4:setParent(obj.flowLayout2);
    obj.flowPart4:setWidth(96);
    obj.flowPart4:setMargins({top=2,bottom=2,left=2,right=2});
    obj.flowPart4:setName("flowPart4");

    obj.rectangle5 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.flowPart4);
    obj.rectangle5:setAlign("client");
    obj.rectangle5:setColor("white");
    obj.rectangle5:setName("rectangle5");

    obj.flowPart5 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart5:setParent(obj.flowLayout2);
    obj.flowPart5:setWidth(96);
    obj.flowPart5:setMargins({top=2,bottom=2,left=2,right=2});
    obj.flowPart5:setName("flowPart5");

    obj.rectangle6 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.flowPart5);
    obj.rectangle6:setAlign("client");
    obj.rectangle6:setColor("green");
    obj.rectangle6:setName("rectangle6");

    obj.flowPart6 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart6:setParent(obj.flowLayout2);
    obj.flowPart6:setWidth(96);
    obj.flowPart6:setMargins({top=2,bottom=2,left=2,right=2});
    obj.flowPart6:setName("flowPart6");

    obj.rectangle7 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle7:setParent(obj.flowPart6);
    obj.rectangle7:setAlign("client");
    obj.rectangle7:setColor("white");
    obj.rectangle7:setName("rectangle7");

    obj.flowPart7 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart7:setParent(obj.flowLayout2);
    obj.flowPart7:setWidth(96);
    obj.flowPart7:setMargins({top=2,bottom=2,left=2,right=2});
    obj.flowPart7:setName("flowPart7");

    obj.rectangle8 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle8:setParent(obj.flowPart7);
    obj.rectangle8:setAlign("client");
    obj.rectangle8:setColor("yellow");
    obj.rectangle8:setName("rectangle8");

    obj.flowPart8 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart8:setParent(obj.flowLayout2);
    obj.flowPart8:setWidth(96);
    obj.flowPart8:setMargins({top=2,bottom=2,left=2,right=2});
    obj.flowPart8:setName("flowPart8");

    obj.rectangle9 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle9:setParent(obj.flowPart8);
    obj.rectangle9:setAlign("client");
    obj.rectangle9:setColor("white");
    obj.rectangle9:setName("rectangle9");

    obj.flowPart9 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart9:setParent(obj.flowLayout2);
    obj.flowPart9:setWidth(96);
    obj.flowPart9:setMargins({top=2,bottom=2,left=2,right=2});
    obj.flowPart9:setName("flowPart9");

    obj.rectangle10 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle10:setParent(obj.flowPart9);
    obj.rectangle10:setAlign("client");
    obj.rectangle10:setColor("black");
    obj.rectangle10:setName("rectangle10");

    obj.flowPart10 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart10:setParent(obj.flowLayout2);
    obj.flowPart10:setWidth(96);
    obj.flowPart10:setMargins({top=2,bottom=2,left=2,right=2});
    obj.flowPart10:setName("flowPart10");

    obj.rectangle11 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle11:setParent(obj.flowPart10);
    obj.rectangle11:setAlign("client");
    obj.rectangle11:setColor("white");
    obj.rectangle11:setName("rectangle11");

    obj.flowPart11 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart11:setParent(obj.flowLayout2);
    obj.flowPart11:setWidth(96);
    obj.flowPart11:setMargins({top=2,bottom=2,left=2,right=2});
    obj.flowPart11:setName("flowPart11");

    obj.rectangle12 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle12:setParent(obj.flowPart11);
    obj.rectangle12:setAlign("client");
    obj.rectangle12:setColor("red");
    obj.rectangle12:setName("rectangle12");

    obj.flowPart12 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart12:setParent(obj.flowLayout2);
    obj.flowPart12:setWidth(96);
    obj.flowPart12:setMargins({top=2,bottom=2,left=2,right=2});
    obj.flowPart12:setName("flowPart12");

    obj.rectangle13 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle13:setParent(obj.flowPart12);
    obj.rectangle13:setAlign("client");
    obj.rectangle13:setColor("white");
    obj.rectangle13:setName("rectangle13");

    obj.flowPart13 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart13:setParent(obj.flowLayout2);
    obj.flowPart13:setWidth(96);
    obj.flowPart13:setMargins({top=2,bottom=2,left=2,right=2});
    obj.flowPart13:setName("flowPart13");

    obj.rectangle14 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle14:setParent(obj.flowPart13);
    obj.rectangle14:setAlign("client");
    obj.rectangle14:setColor("blue");
    obj.rectangle14:setName("rectangle14");

    obj.flowPart14 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart14:setParent(obj.flowLayout2);
    obj.flowPart14:setWidth(96);
    obj.flowPart14:setMargins({top=2,bottom=2,left=2,right=2});
    obj.flowPart14:setName("flowPart14");

    obj.rectangle15 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle15:setParent(obj.flowPart14);
    obj.rectangle15:setAlign("client");
    obj.rectangle15:setColor("white");
    obj.rectangle15:setName("rectangle15");

    obj.flowPart15 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart15:setParent(obj.flowLayout2);
    obj.flowPart15:setWidth(96);
    obj.flowPart15:setMargins({top=2,bottom=2,left=2,right=2});
    obj.flowPart15:setName("flowPart15");

    obj.rectangle16 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle16:setParent(obj.flowPart15);
    obj.rectangle16:setAlign("client");
    obj.rectangle16:setColor("green");
    obj.rectangle16:setName("rectangle16");

    obj.flowPart16 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart16:setParent(obj.flowLayout2);
    obj.flowPart16:setWidth(96);
    obj.flowPart16:setMargins({top=2,bottom=2,left=2,right=2});
    obj.flowPart16:setName("flowPart16");

    obj.rectangle17 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle17:setParent(obj.flowPart16);
    obj.rectangle17:setAlign("client");
    obj.rectangle17:setColor("white");
    obj.rectangle17:setName("rectangle17");

    obj.flowPart17 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart17:setParent(obj.flowLayout2);
    obj.flowPart17:setWidth(96);
    obj.flowPart17:setMargins({top=2,bottom=2,left=2,right=2});
    obj.flowPart17:setName("flowPart17");

    obj.rectangle18 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle18:setParent(obj.flowPart17);
    obj.rectangle18:setAlign("client");
    obj.rectangle18:setColor("yellow");
    obj.rectangle18:setName("rectangle18");

    obj.flowPart18 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart18:setParent(obj.flowLayout2);
    obj.flowPart18:setWidth(96);
    obj.flowPart18:setMargins({top=2,bottom=2,left=2,right=2});
    obj.flowPart18:setName("flowPart18");

    obj.rectangle19 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle19:setParent(obj.flowPart18);
    obj.rectangle19:setAlign("client");
    obj.rectangle19:setColor("white");
    obj.rectangle19:setName("rectangle19");

    obj.flowPart19 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart19:setParent(obj.flowLayout2);
    obj.flowPart19:setWidth(96);
    obj.flowPart19:setMargins({top=2,bottom=2,left=2,right=2});
    obj.flowPart19:setName("flowPart19");

    obj.rectangle20 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle20:setParent(obj.flowPart19);
    obj.rectangle20:setAlign("client");
    obj.rectangle20:setColor("black");
    obj.rectangle20:setName("rectangle20");

    obj.flowPart20 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart20:setParent(obj.flowLayout2);
    obj.flowPart20:setWidth(96);
    obj.flowPart20:setMargins({top=2,bottom=2,left=2,right=2});
    obj.flowPart20:setName("flowPart20");

    obj.rectangle21 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle21:setParent(obj.flowPart20);
    obj.rectangle21:setAlign("client");
    obj.rectangle21:setColor("white");
    obj.rectangle21:setName("rectangle21");

    obj.abaVaziaaba1 = GUI.fromHandle(_obj_newObject("tab"));
    obj.abaVaziaaba1:setParent(obj.pgcPrincipal);
    obj.abaVaziaaba1:setName("abaVaziaaba1");
    obj.abaVaziaaba1:setTitle("Perfil");

    obj.rectangle22 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle22:setParent(obj.abaVaziaaba1);
    obj.rectangle22:setAlign("client");
    obj.rectangle22:setColor("#40000000");
    obj.rectangle22:setXradius(10);
    obj.rectangle22:setYradius(10);
    obj.rectangle22:setName("rectangle22");

    obj.scrollBox2 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox2:setParent(obj.rectangle22);
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

    obj.flowLayout3 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout3:setParent(obj.popupaba1);
    obj.flowLayout3:setWidth(150);
    obj.flowLayout3:setHeight(50);
    obj.flowLayout3:setPadding({top=5,bottom=5,left=5,right=5});
    obj.flowLayout3:setMaxControlsPerLine(2);
    obj.flowLayout3:setName("flowLayout3");

    obj.editaba1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.editaba1:setParent(obj.flowLayout3);
    obj.editaba1:setAlign("top");
    obj.editaba1:setName("editaba1");
    obj.editaba1:setField("editaba1");
    obj.editaba1:setFontSize(10);
    obj.editaba1:setTransparent(true);
    obj.editaba1:setVertTextAlign("center");
    obj.editaba1:setWidth(100);

    obj.okButtonaba1 = GUI.fromHandle(_obj_newObject("button"));
    obj.okButtonaba1:setParent(obj.flowLayout3);
    obj.okButtonaba1:setName("okButtonaba1");
    obj.okButtonaba1:setText("ok");
    obj.okButtonaba1:setWidth(25);
    obj.okButtonaba1:setFontSize(10);

    obj.horzLine1 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine1:setParent(obj.flowLayout3);
    obj.horzLine1:setAlign("top");
    obj.horzLine1:setStrokeColor("#FFFFFF50");
    obj.horzLine1:setStrokeSize(1);
    obj.horzLine1:setWidth(100);
    obj.horzLine1:setName("horzLine1");

    obj.abaVaziaaba2 = GUI.fromHandle(_obj_newObject("tab"));
    obj.abaVaziaaba2:setParent(obj.pgcPrincipal);
    obj.abaVaziaaba2:setName("abaVaziaaba2");
    obj.abaVaziaaba2:setTitle("Habilidades");

    obj.rectangle23 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle23:setParent(obj.abaVaziaaba2);
    obj.rectangle23:setAlign("client");
    obj.rectangle23:setColor("#40000000");
    obj.rectangle23:setXradius(10);
    obj.rectangle23:setYradius(10);
    obj.rectangle23:setName("rectangle23");

    obj.scrollBox3 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox3:setParent(obj.rectangle23);
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

    obj.flowLayout4 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout4:setParent(obj.popupaba2);
    obj.flowLayout4:setWidth(150);
    obj.flowLayout4:setHeight(50);
    obj.flowLayout4:setPadding({top=5,bottom=5,left=5,right=5});
    obj.flowLayout4:setMaxControlsPerLine(2);
    obj.flowLayout4:setName("flowLayout4");

    obj.editaba2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.editaba2:setParent(obj.flowLayout4);
    obj.editaba2:setAlign("top");
    obj.editaba2:setName("editaba2");
    obj.editaba2:setField("editaba2");
    obj.editaba2:setFontSize(10);
    obj.editaba2:setTransparent(true);
    obj.editaba2:setVertTextAlign("center");
    obj.editaba2:setWidth(100);

    obj.okButtonaba2 = GUI.fromHandle(_obj_newObject("button"));
    obj.okButtonaba2:setParent(obj.flowLayout4);
    obj.okButtonaba2:setName("okButtonaba2");
    obj.okButtonaba2:setText("ok");
    obj.okButtonaba2:setWidth(25);
    obj.okButtonaba2:setFontSize(10);

    obj.horzLine2 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine2:setParent(obj.flowLayout4);
    obj.horzLine2:setAlign("top");
    obj.horzLine2:setStrokeColor("#FFFFFF50");
    obj.horzLine2:setStrokeSize(1);
    obj.horzLine2:setWidth(100);
    obj.horzLine2:setName("horzLine2");

    obj.abaVaziaaba3 = GUI.fromHandle(_obj_newObject("tab"));
    obj.abaVaziaaba3:setParent(obj.pgcPrincipal);
    obj.abaVaziaaba3:setName("abaVaziaaba3");
    obj.abaVaziaaba3:setTitle("Inventário");

    obj.rectangle24 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle24:setParent(obj.abaVaziaaba3);
    obj.rectangle24:setAlign("client");
    obj.rectangle24:setColor("#40000000");
    obj.rectangle24:setXradius(10);
    obj.rectangle24:setYradius(10);
    obj.rectangle24:setName("rectangle24");

    obj.scrollBox4 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox4:setParent(obj.rectangle24);
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

    obj.flowLayout5 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout5:setParent(obj.popupaba3);
    obj.flowLayout5:setWidth(150);
    obj.flowLayout5:setHeight(50);
    obj.flowLayout5:setPadding({top=5,bottom=5,left=5,right=5});
    obj.flowLayout5:setMaxControlsPerLine(2);
    obj.flowLayout5:setName("flowLayout5");

    obj.editaba3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.editaba3:setParent(obj.flowLayout5);
    obj.editaba3:setAlign("top");
    obj.editaba3:setName("editaba3");
    obj.editaba3:setField("editaba3");
    obj.editaba3:setFontSize(10);
    obj.editaba3:setTransparent(true);
    obj.editaba3:setVertTextAlign("center");
    obj.editaba3:setWidth(100);

    obj.okButtonaba3 = GUI.fromHandle(_obj_newObject("button"));
    obj.okButtonaba3:setParent(obj.flowLayout5);
    obj.okButtonaba3:setName("okButtonaba3");
    obj.okButtonaba3:setText("ok");
    obj.okButtonaba3:setWidth(25);
    obj.okButtonaba3:setFontSize(10);

    obj.horzLine3 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine3:setParent(obj.flowLayout5);
    obj.horzLine3:setAlign("top");
    obj.horzLine3:setStrokeColor("#FFFFFF50");
    obj.horzLine3:setStrokeSize(1);
    obj.horzLine3:setWidth(100);
    obj.horzLine3:setName("horzLine3");

    obj.abaVaziaaba4 = GUI.fromHandle(_obj_newObject("tab"));
    obj.abaVaziaaba4:setParent(obj.pgcPrincipal);
    obj.abaVaziaaba4:setName("abaVaziaaba4");
    obj.abaVaziaaba4:setTitle("Outros Itens");

    obj.rectangle25 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle25:setParent(obj.abaVaziaaba4);
    obj.rectangle25:setAlign("client");
    obj.rectangle25:setColor("#40000000");
    obj.rectangle25:setXradius(10);
    obj.rectangle25:setYradius(10);
    obj.rectangle25:setName("rectangle25");

    obj.scrollBox5 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox5:setParent(obj.rectangle25);
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

    obj.flowLayout6 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout6:setParent(obj.popupaba4);
    obj.flowLayout6:setWidth(150);
    obj.flowLayout6:setHeight(50);
    obj.flowLayout6:setPadding({top=5,bottom=5,left=5,right=5});
    obj.flowLayout6:setMaxControlsPerLine(2);
    obj.flowLayout6:setName("flowLayout6");

    obj.editaba4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.editaba4:setParent(obj.flowLayout6);
    obj.editaba4:setAlign("top");
    obj.editaba4:setName("editaba4");
    obj.editaba4:setField("editaba4");
    obj.editaba4:setFontSize(10);
    obj.editaba4:setTransparent(true);
    obj.editaba4:setVertTextAlign("center");
    obj.editaba4:setWidth(100);

    obj.okButtonaba4 = GUI.fromHandle(_obj_newObject("button"));
    obj.okButtonaba4:setParent(obj.flowLayout6);
    obj.okButtonaba4:setName("okButtonaba4");
    obj.okButtonaba4:setText("ok");
    obj.okButtonaba4:setWidth(25);
    obj.okButtonaba4:setFontSize(10);

    obj.horzLine4 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine4:setParent(obj.flowLayout6);
    obj.horzLine4:setAlign("top");
    obj.horzLine4:setStrokeColor("#FFFFFF50");
    obj.horzLine4:setStrokeSize(1);
    obj.horzLine4:setWidth(100);
    obj.horzLine4:setName("horzLine4");

    obj.abaVaziaaba5 = GUI.fromHandle(_obj_newObject("tab"));
    obj.abaVaziaaba5:setParent(obj.pgcPrincipal);
    obj.abaVaziaaba5:setName("abaVaziaaba5");
    obj.abaVaziaaba5:setTitle("NPC's");

    obj.rectangle26 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle26:setParent(obj.abaVaziaaba5);
    obj.rectangle26:setAlign("client");
    obj.rectangle26:setColor("#40000000");
    obj.rectangle26:setXradius(10);
    obj.rectangle26:setYradius(10);
    obj.rectangle26:setName("rectangle26");

    obj.scrollBox6 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox6:setParent(obj.rectangle26);
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

    obj.flowLayout7 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout7:setParent(obj.popupaba5);
    obj.flowLayout7:setWidth(150);
    obj.flowLayout7:setHeight(50);
    obj.flowLayout7:setPadding({top=5,bottom=5,left=5,right=5});
    obj.flowLayout7:setMaxControlsPerLine(2);
    obj.flowLayout7:setName("flowLayout7");

    obj.editaba5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.editaba5:setParent(obj.flowLayout7);
    obj.editaba5:setAlign("top");
    obj.editaba5:setName("editaba5");
    obj.editaba5:setField("editaba5");
    obj.editaba5:setFontSize(10);
    obj.editaba5:setTransparent(true);
    obj.editaba5:setVertTextAlign("center");
    obj.editaba5:setWidth(100);

    obj.okButtonaba5 = GUI.fromHandle(_obj_newObject("button"));
    obj.okButtonaba5:setParent(obj.flowLayout7);
    obj.okButtonaba5:setName("okButtonaba5");
    obj.okButtonaba5:setText("ok");
    obj.okButtonaba5:setWidth(25);
    obj.okButtonaba5:setFontSize(10);

    obj.horzLine5 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine5:setParent(obj.flowLayout7);
    obj.horzLine5:setAlign("top");
    obj.horzLine5:setStrokeColor("#FFFFFF50");
    obj.horzLine5:setStrokeSize(1);
    obj.horzLine5:setWidth(100);
    obj.horzLine5:setName("horzLine5");

    obj.abaVaziaaba6 = GUI.fromHandle(_obj_newObject("tab"));
    obj.abaVaziaaba6:setParent(obj.pgcPrincipal);
    obj.abaVaziaaba6:setName("abaVaziaaba6");
    obj.abaVaziaaba6:setTitle("Anotações");

    obj.rectangle27 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle27:setParent(obj.abaVaziaaba6);
    obj.rectangle27:setAlign("client");
    obj.rectangle27:setColor("#40000000");
    obj.rectangle27:setXradius(10);
    obj.rectangle27:setYradius(10);
    obj.rectangle27:setName("rectangle27");

    obj.scrollBox7 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox7:setParent(obj.rectangle27);
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

    obj.flowLayout8 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout8:setParent(obj.popupaba6);
    obj.flowLayout8:setWidth(150);
    obj.flowLayout8:setHeight(50);
    obj.flowLayout8:setPadding({top=5,bottom=5,left=5,right=5});
    obj.flowLayout8:setMaxControlsPerLine(2);
    obj.flowLayout8:setName("flowLayout8");

    obj.editaba6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.editaba6:setParent(obj.flowLayout8);
    obj.editaba6:setAlign("top");
    obj.editaba6:setName("editaba6");
    obj.editaba6:setField("editaba6");
    obj.editaba6:setFontSize(10);
    obj.editaba6:setTransparent(true);
    obj.editaba6:setVertTextAlign("center");
    obj.editaba6:setWidth(100);

    obj.okButtonaba6 = GUI.fromHandle(_obj_newObject("button"));
    obj.okButtonaba6:setParent(obj.flowLayout8);
    obj.okButtonaba6:setName("okButtonaba6");
    obj.okButtonaba6:setText("ok");
    obj.okButtonaba6:setWidth(25);
    obj.okButtonaba6:setFontSize(10);

    obj.horzLine6 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine6:setParent(obj.flowLayout8);
    obj.horzLine6:setAlign("top");
    obj.horzLine6:setStrokeColor("#FFFFFF50");
    obj.horzLine6:setStrokeSize(1);
    obj.horzLine6:setWidth(100);
    obj.horzLine6:setName("horzLine6");

    obj.abaVaziaaba7 = GUI.fromHandle(_obj_newObject("tab"));
    obj.abaVaziaaba7:setParent(obj.pgcPrincipal);
    obj.abaVaziaaba7:setName("abaVaziaaba7");
    obj.abaVaziaaba7:setTitle("Extra1");

    obj.rectangle28 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle28:setParent(obj.abaVaziaaba7);
    obj.rectangle28:setAlign("client");
    obj.rectangle28:setColor("#40000000");
    obj.rectangle28:setXradius(10);
    obj.rectangle28:setYradius(10);
    obj.rectangle28:setName("rectangle28");

    obj.scrollBox8 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox8:setParent(obj.rectangle28);
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

    obj.flowLayout9 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout9:setParent(obj.popupaba7);
    obj.flowLayout9:setWidth(150);
    obj.flowLayout9:setHeight(50);
    obj.flowLayout9:setPadding({top=5,bottom=5,left=5,right=5});
    obj.flowLayout9:setMaxControlsPerLine(2);
    obj.flowLayout9:setName("flowLayout9");

    obj.editaba7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.editaba7:setParent(obj.flowLayout9);
    obj.editaba7:setAlign("top");
    obj.editaba7:setName("editaba7");
    obj.editaba7:setField("editaba7");
    obj.editaba7:setFontSize(10);
    obj.editaba7:setTransparent(true);
    obj.editaba7:setVertTextAlign("center");
    obj.editaba7:setWidth(100);

    obj.okButtonaba7 = GUI.fromHandle(_obj_newObject("button"));
    obj.okButtonaba7:setParent(obj.flowLayout9);
    obj.okButtonaba7:setName("okButtonaba7");
    obj.okButtonaba7:setText("ok");
    obj.okButtonaba7:setWidth(25);
    obj.okButtonaba7:setFontSize(10);

    obj.horzLine7 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine7:setParent(obj.flowLayout9);
    obj.horzLine7:setAlign("top");
    obj.horzLine7:setStrokeColor("#FFFFFF50");
    obj.horzLine7:setStrokeSize(1);
    obj.horzLine7:setWidth(100);
    obj.horzLine7:setName("horzLine7");

    obj.abaVaziaaba8 = GUI.fromHandle(_obj_newObject("tab"));
    obj.abaVaziaaba8:setParent(obj.pgcPrincipal);
    obj.abaVaziaaba8:setName("abaVaziaaba8");
    obj.abaVaziaaba8:setTitle("Extra2");

    obj.rectangle29 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle29:setParent(obj.abaVaziaaba8);
    obj.rectangle29:setAlign("client");
    obj.rectangle29:setColor("#40000000");
    obj.rectangle29:setXradius(10);
    obj.rectangle29:setYradius(10);
    obj.rectangle29:setName("rectangle29");

    obj.scrollBox9 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox9:setParent(obj.rectangle29);
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

    obj.flowLayout10 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout10:setParent(obj.popupaba8);
    obj.flowLayout10:setWidth(150);
    obj.flowLayout10:setHeight(50);
    obj.flowLayout10:setPadding({top=5,bottom=5,left=5,right=5});
    obj.flowLayout10:setMaxControlsPerLine(2);
    obj.flowLayout10:setName("flowLayout10");

    obj.editaba8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.editaba8:setParent(obj.flowLayout10);
    obj.editaba8:setAlign("top");
    obj.editaba8:setName("editaba8");
    obj.editaba8:setField("editaba8");
    obj.editaba8:setFontSize(10);
    obj.editaba8:setTransparent(true);
    obj.editaba8:setVertTextAlign("center");
    obj.editaba8:setWidth(100);

    obj.okButtonaba8 = GUI.fromHandle(_obj_newObject("button"));
    obj.okButtonaba8:setParent(obj.flowLayout10);
    obj.okButtonaba8:setName("okButtonaba8");
    obj.okButtonaba8:setText("ok");
    obj.okButtonaba8:setWidth(25);
    obj.okButtonaba8:setFontSize(10);

    obj.horzLine8 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine8:setParent(obj.flowLayout10);
    obj.horzLine8:setAlign("top");
    obj.horzLine8:setStrokeColor("#FFFFFF50");
    obj.horzLine8:setStrokeSize(1);
    obj.horzLine8:setWidth(100);
    obj.horzLine8:setName("horzLine8");

    obj.abaVaziaaba9 = GUI.fromHandle(_obj_newObject("tab"));
    obj.abaVaziaaba9:setParent(obj.pgcPrincipal);
    obj.abaVaziaaba9:setName("abaVaziaaba9");
    obj.abaVaziaaba9:setTitle("Extra3");

    obj.rectangle30 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle30:setParent(obj.abaVaziaaba9);
    obj.rectangle30:setAlign("client");
    obj.rectangle30:setColor("#40000000");
    obj.rectangle30:setXradius(10);
    obj.rectangle30:setYradius(10);
    obj.rectangle30:setName("rectangle30");

    obj.scrollBox10 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox10:setParent(obj.rectangle30);
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

    obj.flowLayout11 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout11:setParent(obj.popupaba9);
    obj.flowLayout11:setWidth(150);
    obj.flowLayout11:setHeight(50);
    obj.flowLayout11:setPadding({top=5,bottom=5,left=5,right=5});
    obj.flowLayout11:setMaxControlsPerLine(2);
    obj.flowLayout11:setName("flowLayout11");

    obj.editaba9 = GUI.fromHandle(_obj_newObject("edit"));
    obj.editaba9:setParent(obj.flowLayout11);
    obj.editaba9:setAlign("top");
    obj.editaba9:setName("editaba9");
    obj.editaba9:setField("editaba9");
    obj.editaba9:setFontSize(10);
    obj.editaba9:setTransparent(true);
    obj.editaba9:setVertTextAlign("center");
    obj.editaba9:setWidth(100);

    obj.okButtonaba9 = GUI.fromHandle(_obj_newObject("button"));
    obj.okButtonaba9:setParent(obj.flowLayout11);
    obj.okButtonaba9:setName("okButtonaba9");
    obj.okButtonaba9:setText("ok");
    obj.okButtonaba9:setWidth(25);
    obj.okButtonaba9:setFontSize(10);

    obj.horzLine9 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine9:setParent(obj.flowLayout11);
    obj.horzLine9:setAlign("top");
    obj.horzLine9:setStrokeColor("#FFFFFF50");
    obj.horzLine9:setStrokeSize(1);
    obj.horzLine9:setWidth(100);
    obj.horzLine9:setName("horzLine9");

    obj.abaVaziaaba10 = GUI.fromHandle(_obj_newObject("tab"));
    obj.abaVaziaaba10:setParent(obj.pgcPrincipal);
    obj.abaVaziaaba10:setName("abaVaziaaba10");
    obj.abaVaziaaba10:setTitle("Extra4");

    obj.rectangle31 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle31:setParent(obj.abaVaziaaba10);
    obj.rectangle31:setAlign("client");
    obj.rectangle31:setColor("#40000000");
    obj.rectangle31:setXradius(10);
    obj.rectangle31:setYradius(10);
    obj.rectangle31:setName("rectangle31");

    obj.scrollBox11 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox11:setParent(obj.rectangle31);
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

    obj.flowLayout12 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout12:setParent(obj.popupaba10);
    obj.flowLayout12:setWidth(150);
    obj.flowLayout12:setHeight(50);
    obj.flowLayout12:setPadding({top=5,bottom=5,left=5,right=5});
    obj.flowLayout12:setMaxControlsPerLine(2);
    obj.flowLayout12:setName("flowLayout12");

    obj.editaba10 = GUI.fromHandle(_obj_newObject("edit"));
    obj.editaba10:setParent(obj.flowLayout12);
    obj.editaba10:setAlign("top");
    obj.editaba10:setName("editaba10");
    obj.editaba10:setField("editaba10");
    obj.editaba10:setFontSize(10);
    obj.editaba10:setTransparent(true);
    obj.editaba10:setVertTextAlign("center");
    obj.editaba10:setWidth(100);

    obj.okButtonaba10 = GUI.fromHandle(_obj_newObject("button"));
    obj.okButtonaba10:setParent(obj.flowLayout12);
    obj.okButtonaba10:setName("okButtonaba10");
    obj.okButtonaba10:setText("ok");
    obj.okButtonaba10:setWidth(25);
    obj.okButtonaba10:setFontSize(10);

    obj.horzLine10 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine10:setParent(obj.flowLayout12);
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

        if self.rectangle11 ~= nil then self.rectangle11:destroy(); self.rectangle11 = nil; end;
        if self.flowPart14 ~= nil then self.flowPart14:destroy(); self.flowPart14 = nil; end;
        if self.flowPart8 ~= nil then self.flowPart8:destroy(); self.flowPart8 = nil; end;
        if self.abaVaziaaba5 ~= nil then self.abaVaziaaba5:destroy(); self.abaVaziaaba5 = nil; end;
        if self.flowPart10 ~= nil then self.flowPart10:destroy(); self.flowPart10 = nil; end;
        if self.horzLine7 ~= nil then self.horzLine7:destroy(); self.horzLine7 = nil; end;
        if self.rectangle9 ~= nil then self.rectangle9:destroy(); self.rectangle9 = nil; end;
        if self.scrollBox8 ~= nil then self.scrollBox8:destroy(); self.scrollBox8 = nil; end;
        if self.flowLayout3 ~= nil then self.flowLayout3:destroy(); self.flowLayout3 = nil; end;
        if self.scrollBox7 ~= nil then self.scrollBox7:destroy(); self.scrollBox7 = nil; end;
        if self.flowPart7 ~= nil then self.flowPart7:destroy(); self.flowPart7 = nil; end;
        if self.scrollBox11 ~= nil then self.scrollBox11:destroy(); self.scrollBox11 = nil; end;
        if self.okButtonaba4 ~= nil then self.okButtonaba4:destroy(); self.okButtonaba4 = nil; end;
        if self.flowLayout1 ~= nil then self.flowLayout1:destroy(); self.flowLayout1 = nil; end;
        if self.flowPart13 ~= nil then self.flowPart13:destroy(); self.flowPart13 = nil; end;
        if self.rectangle21 ~= nil then self.rectangle21:destroy(); self.rectangle21 = nil; end;
        if self.abaVaziaaba2 ~= nil then self.abaVaziaaba2:destroy(); self.abaVaziaaba2 = nil; end;
        if self.flowPart1 ~= nil then self.flowPart1:destroy(); self.flowPart1 = nil; end;
        if self.rectangle16 ~= nil then self.rectangle16:destroy(); self.rectangle16 = nil; end;
        if self.richEdit10 ~= nil then self.richEdit10:destroy(); self.richEdit10 = nil; end;
        if self.horzLine10 ~= nil then self.horzLine10:destroy(); self.horzLine10 = nil; end;
        if self.flowLayout12 ~= nil then self.flowLayout12:destroy(); self.flowLayout12 = nil; end;
        if self.flowLayout5 ~= nil then self.flowLayout5:destroy(); self.flowLayout5 = nil; end;
        if self.flowPart2 ~= nil then self.flowPart2:destroy(); self.flowPart2 = nil; end;
        if self.rectangle19 ~= nil then self.rectangle19:destroy(); self.rectangle19 = nil; end;
        if self.flowPart18 ~= nil then self.flowPart18:destroy(); self.flowPart18 = nil; end;
        if self.rectangle22 ~= nil then self.rectangle22:destroy(); self.rectangle22 = nil; end;
        if self.rectangle29 ~= nil then self.rectangle29:destroy(); self.rectangle29 = nil; end;
        if self.horzLine2 ~= nil then self.horzLine2:destroy(); self.horzLine2 = nil; end;
        if self.rectangle10 ~= nil then self.rectangle10:destroy(); self.rectangle10 = nil; end;
        if self.popupaba8 ~= nil then self.popupaba8:destroy(); self.popupaba8 = nil; end;
        if self.editaba2 ~= nil then self.editaba2:destroy(); self.editaba2 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.abaVaziaaba1 ~= nil then self.abaVaziaaba1:destroy(); self.abaVaziaaba1 = nil; end;
        if self.richEdit4 ~= nil then self.richEdit4:destroy(); self.richEdit4 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.flowPart19 ~= nil then self.flowPart19:destroy(); self.flowPart19 = nil; end;
        if self.flowPart16 ~= nil then self.flowPart16:destroy(); self.flowPart16 = nil; end;
        if self.popupaba5 ~= nil then self.popupaba5:destroy(); self.popupaba5 = nil; end;
        if self.horzLine8 ~= nil then self.horzLine8:destroy(); self.horzLine8 = nil; end;
        if self.popupaba1 ~= nil then self.popupaba1:destroy(); self.popupaba1 = nil; end;
        if self.popupaba10 ~= nil then self.popupaba10:destroy(); self.popupaba10 = nil; end;
        if self.rectangle17 ~= nil then self.rectangle17:destroy(); self.rectangle17 = nil; end;
        if self.editaba4 ~= nil then self.editaba4:destroy(); self.editaba4 = nil; end;
        if self.abaVaziaaba8 ~= nil then self.abaVaziaaba8:destroy(); self.abaVaziaaba8 = nil; end;
        if self.rectangle25 ~= nil then self.rectangle25:destroy(); self.rectangle25 = nil; end;
        if self.flowPart12 ~= nil then self.flowPart12:destroy(); self.flowPart12 = nil; end;
        if self.scrollBox9 ~= nil then self.scrollBox9:destroy(); self.scrollBox9 = nil; end;
        if self.editaba6 ~= nil then self.editaba6:destroy(); self.editaba6 = nil; end;
        if self.scrollBox2 ~= nil then self.scrollBox2:destroy(); self.scrollBox2 = nil; end;
        if self.okButtonaba3 ~= nil then self.okButtonaba3:destroy(); self.okButtonaba3 = nil; end;
        if self.horzLine5 ~= nil then self.horzLine5:destroy(); self.horzLine5 = nil; end;
        if self.okButtonaba9 ~= nil then self.okButtonaba9:destroy(); self.okButtonaba9 = nil; end;
        if self.rectangle15 ~= nil then self.rectangle15:destroy(); self.rectangle15 = nil; end;
        if self.flowLayout7 ~= nil then self.flowLayout7:destroy(); self.flowLayout7 = nil; end;
        if self.editaba3 ~= nil then self.editaba3:destroy(); self.editaba3 = nil; end;
        if self.okButtonaba6 ~= nil then self.okButtonaba6:destroy(); self.okButtonaba6 = nil; end;
        if self.flowPart4 ~= nil then self.flowPart4:destroy(); self.flowPart4 = nil; end;
        if self.okButtonaba2 ~= nil then self.okButtonaba2:destroy(); self.okButtonaba2 = nil; end;
        if self.rectangle28 ~= nil then self.rectangle28:destroy(); self.rectangle28 = nil; end;
        if self.flowPart20 ~= nil then self.flowPart20:destroy(); self.flowPart20 = nil; end;
        if self.flowLayout9 ~= nil then self.flowLayout9:destroy(); self.flowLayout9 = nil; end;
        if self.flowLayout10 ~= nil then self.flowLayout10:destroy(); self.flowLayout10 = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.abaVaziaaba10 ~= nil then self.abaVaziaaba10:destroy(); self.abaVaziaaba10 = nil; end;
        if self.rectangle26 ~= nil then self.rectangle26:destroy(); self.rectangle26 = nil; end;
        if self.horzLine9 ~= nil then self.horzLine9:destroy(); self.horzLine9 = nil; end;
        if self.abaVaziaaba3 ~= nil then self.abaVaziaaba3:destroy(); self.abaVaziaaba3 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.editaba8 ~= nil then self.editaba8:destroy(); self.editaba8 = nil; end;
        if self.okButtonaba7 ~= nil then self.okButtonaba7:destroy(); self.okButtonaba7 = nil; end;
        if self.okButtonaba8 ~= nil then self.okButtonaba8:destroy(); self.okButtonaba8 = nil; end;
        if self.okButtonaba5 ~= nil then self.okButtonaba5:destroy(); self.okButtonaba5 = nil; end;
        if self.rectangle20 ~= nil then self.rectangle20:destroy(); self.rectangle20 = nil; end;
        if self.flowLayout11 ~= nil then self.flowLayout11:destroy(); self.flowLayout11 = nil; end;
        if self.okButtonaba10 ~= nil then self.okButtonaba10:destroy(); self.okButtonaba10 = nil; end;
        if self.flowLayout4 ~= nil then self.flowLayout4:destroy(); self.flowLayout4 = nil; end;
        if self.flowPart5 ~= nil then self.flowPart5:destroy(); self.flowPart5 = nil; end;
        if self.flowPart9 ~= nil then self.flowPart9:destroy(); self.flowPart9 = nil; end;
        if self.editaba9 ~= nil then self.editaba9:destroy(); self.editaba9 = nil; end;
        if self.editaba5 ~= nil then self.editaba5:destroy(); self.editaba5 = nil; end;
        if self.flowPart11 ~= nil then self.flowPart11:destroy(); self.flowPart11 = nil; end;
        if self.popupaba2 ~= nil then self.popupaba2:destroy(); self.popupaba2 = nil; end;
        if self.rectangle27 ~= nil then self.rectangle27:destroy(); self.rectangle27 = nil; end;
        if self.scrollBox10 ~= nil then self.scrollBox10:destroy(); self.scrollBox10 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.editaba1 ~= nil then self.editaba1:destroy(); self.editaba1 = nil; end;
        if self.rectangle23 ~= nil then self.rectangle23:destroy(); self.rectangle23 = nil; end;
        if self.flowPart6 ~= nil then self.flowPart6:destroy(); self.flowPart6 = nil; end;
        if self.flowLayout2 ~= nil then self.flowLayout2:destroy(); self.flowLayout2 = nil; end;
        if self.horzLine1 ~= nil then self.horzLine1:destroy(); self.horzLine1 = nil; end;
        if self.abaVaziaaba4 ~= nil then self.abaVaziaaba4:destroy(); self.abaVaziaaba4 = nil; end;
        if self.flowPart17 ~= nil then self.flowPart17:destroy(); self.flowPart17 = nil; end;
        if self.okButtonaba1 ~= nil then self.okButtonaba1:destroy(); self.okButtonaba1 = nil; end;
        if self.rectangle30 ~= nil then self.rectangle30:destroy(); self.rectangle30 = nil; end;
        if self.rectangle12 ~= nil then self.rectangle12:destroy(); self.rectangle12 = nil; end;
        if self.abaAtributos ~= nil then self.abaAtributos:destroy(); self.abaAtributos = nil; end;
        if self.scrollBox6 ~= nil then self.scrollBox6:destroy(); self.scrollBox6 = nil; end;
        if self.abaVaziaaba6 ~= nil then self.abaVaziaaba6:destroy(); self.abaVaziaaba6 = nil; end;
        if self.richEdit1 ~= nil then self.richEdit1:destroy(); self.richEdit1 = nil; end;
        if self.flowPart3 ~= nil then self.flowPart3:destroy(); self.flowPart3 = nil; end;
        if self.abaVaziaaba7 ~= nil then self.abaVaziaaba7:destroy(); self.abaVaziaaba7 = nil; end;
        if self.editaba10 ~= nil then self.editaba10:destroy(); self.editaba10 = nil; end;
        if self.richEdit7 ~= nil then self.richEdit7:destroy(); self.richEdit7 = nil; end;
        if self.rectangle31 ~= nil then self.rectangle31:destroy(); self.rectangle31 = nil; end;
        if self.scrollBox3 ~= nil then self.scrollBox3:destroy(); self.scrollBox3 = nil; end;
        if self.popupaba4 ~= nil then self.popupaba4:destroy(); self.popupaba4 = nil; end;
        if self.horzLine3 ~= nil then self.horzLine3:destroy(); self.horzLine3 = nil; end;
        if self.flowLayout6 ~= nil then self.flowLayout6:destroy(); self.flowLayout6 = nil; end;
        if self.richEdit6 ~= nil then self.richEdit6:destroy(); self.richEdit6 = nil; end;
        if self.rectangle18 ~= nil then self.rectangle18:destroy(); self.rectangle18 = nil; end;
        if self.pgcPrincipal ~= nil then self.pgcPrincipal:destroy(); self.pgcPrincipal = nil; end;
        if self.rectangle14 ~= nil then self.rectangle14:destroy(); self.rectangle14 = nil; end;
        if self.richEdit3 ~= nil then self.richEdit3:destroy(); self.richEdit3 = nil; end;
        if self.popupaba3 ~= nil then self.popupaba3:destroy(); self.popupaba3 = nil; end;
        if self.horzLine4 ~= nil then self.horzLine4:destroy(); self.horzLine4 = nil; end;
        if self.richEdit5 ~= nil then self.richEdit5:destroy(); self.richEdit5 = nil; end;
        if self.popupaba6 ~= nil then self.popupaba6:destroy(); self.popupaba6 = nil; end;
        if self.popupaba7 ~= nil then self.popupaba7:destroy(); self.popupaba7 = nil; end;
        if self.popupaba9 ~= nil then self.popupaba9:destroy(); self.popupaba9 = nil; end;
        if self.scrollBox4 ~= nil then self.scrollBox4:destroy(); self.scrollBox4 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.rectangle13 ~= nil then self.rectangle13:destroy(); self.rectangle13 = nil; end;
        if self.abaVaziaaba9 ~= nil then self.abaVaziaaba9:destroy(); self.abaVaziaaba9 = nil; end;
        if self.editaba7 ~= nil then self.editaba7:destroy(); self.editaba7 = nil; end;
        if self.scrollBox5 ~= nil then self.scrollBox5:destroy(); self.scrollBox5 = nil; end;
        if self.richEdit2 ~= nil then self.richEdit2:destroy(); self.richEdit2 = nil; end;
        if self.horzLine6 ~= nil then self.horzLine6:destroy(); self.horzLine6 = nil; end;
        if self.richEdit8 ~= nil then self.richEdit8:destroy(); self.richEdit8 = nil; end;
        if self.richEdit9 ~= nil then self.richEdit9:destroy(); self.richEdit9 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.flowPart15 ~= nil then self.flowPart15:destroy(); self.flowPart15 = nil; end;
        if self.rectangle24 ~= nil then self.rectangle24:destroy(); self.rectangle24 = nil; end;
        if self.flowLayout8 ~= nil then self.flowLayout8:destroy(); self.flowLayout8 = nil; end;
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
