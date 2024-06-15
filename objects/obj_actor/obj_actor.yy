{
  "$GMObject":"",
  "%Name":"obj_actor",
  "eventList":[
    {"$GMEvent":"","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":8,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"","%Name":"","collisionObjectId":null,"eventNum":1,"eventType":3,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
  ],
  "managed":true,
  "name":"obj_actor",
  "overriddenProperties":[],
  "parent":{
    "name":"Actors",
    "path":"folders/Objects/Actors.yy",
  },
  "parentObjectId":null,
  "persistent":false,
  "physicsAngularDamping":0.1,
  "physicsDensity":0.5,
  "physicsFriction":0.2,
  "physicsGroup":1,
  "physicsKinematic":false,
  "physicsLinearDamping":0.1,
  "physicsObject":false,
  "physicsRestitution":0.1,
  "physicsSensor":false,
  "physicsShape":1,
  "physicsShapePoints":[],
  "physicsStartAwake":true,
  "properties":[
    {"$GMObjectProperty":"v1","%Name":"idle_animation","filters":[
        "GMSprite",
      ],"listItems":[],"multiselect":false,"name":"idle_animation","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resource":{"name":"spr_cat_idle","path":"sprites/spr_cat_idle/spr_cat_idle.yy",},"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"spr_cat_idle","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"run_animation","filters":[
        "GMSprite",
      ],"listItems":[],"multiselect":false,"name":"run_animation","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resource":{"name":"spr_cat_run","path":"sprites/spr_cat_run/spr_cat_run.yy",},"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"spr_cat_run","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"jump_animation","filters":[
        "GMSprite",
      ],"listItems":[],"multiselect":false,"name":"jump_animation","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resource":{"name":"spr_cat_jump","path":"sprites/spr_cat_jump/spr_cat_jump.yy",},"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"spr_cat_jump","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"jump_animation_parts","filters":[],"listItems":[
        "4",
        "5",
        "7",
        "8",
      ],"multiselect":true,"name":"jump_animation_parts","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"[4, 5, 7, 8]","varType":4,},
  ],
  "resourceType":"GMObject",
  "resourceVersion":"2.0",
  "solid":false,
  "spriteId":{
    "name":"spr_cat_idle",
    "path":"sprites/spr_cat_idle/spr_cat_idle.yy",
  },
  "spriteMaskId":null,
  "visible":true,
}