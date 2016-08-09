      var dashboard = canvas.new({
         "name": "Canvas-Test", 
         "size": [1024, 1024],
         "view": [480, 512],
         "mipmapping": 1 
      });
      dashboard.addPlacement({"node": "Dashboard", "texture": "dashboard.png"});
      dashboard.setColorBackground(0,0,0,1);
      var group = dashboard.createGroup();
      var GMAP = group.createChild("map");
GMAP.setController("Aircraft position");
GMAP.setRange(1); 
 
GMAP.setTranslation(    dashboard.get("view[0]")/2,
                           dashboard.get("view[1]")/2
                        );
var r = func(name,vis=1,zindex=nil) return caller(0)[0];

foreach(var type; [r('TFC'),r('APT'), r('APS'), r('RTE') ] )
 GMAP.addLayer(factory: canvas.SymbolLayer, type_arg: type.name, visible: type.vis, priority: type.zindex,);
