(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([[1],{"0iu6":function(t,e,a){},A08n:function(t,e,a){"use strict";a.r(e);var i=function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("el-container",{staticClass:"privilege",staticStyle:{overflow:"auto",height:"100%"}},[a("el-main",[a("el-row",{attrs:{gutter:20}},[a("el-col",{attrs:{span:14}},[a("div",{staticClass:"privilege-title"},[a("span",[t._v("请确认您的管理权限")])]),a("el-divider"),a("div",{staticClass:"privilege-content"},[t._l(t.dataPrivilegeList,function(e,i){return a("div",[a("el-radio",{staticClass:"radio",attrs:{label:e.id,border:""},model:{value:t.dataId,callback:function(e){t.dataId=e},expression:"dataId"}},[t._v(t._s(e.name?e.name:"未知"))]),a("el-table",{staticStyle:{width:"100%","margin-bottom":"40px"},attrs:{data:e.roles,"highlight-current-row":"",border:""}},[a("el-table-column",{attrs:{prop:"roleName",label:"角色","min-width":"100px","show-overflow-tooltip":""}}),a("el-table-column",{attrs:{label:"系统","show-tooltip-when-overflow":"","min-width":"200px"},scopedSlots:t._u([{key:"default",fn:function(e){return[a("span",[t._v(t._s(t.formatClient(e.row.clients)))])]}}])})],1),a("div",{directives:[{name:"show",rawName:"v-show",value:i<t.dataPrivilegeList.length-1,expression:"index < dataPrivilegeList.length-1"}]},[a("el-divider")],1)],1)}),a("div",{staticClass:"content-button"},[a("el-button",{attrs:{type:"primary"},on:{click:t.change}},[t._v("确定")]),a("el-button",{on:{click:t.layout}},[t._v("换个账号登录")])],1)],2)],1)],1)],1)],1)},r=[],n=(a("ls82"),a("MECJ")),s=a("yT7P"),o=a("MKSo"),l=a("Mlzr"),u=a("L2JU"),c={name:"PrivilegeChoose",props:["route"],data:function(){return{dataPrivilegeList:[],dataId:"",border:!0}},created:function(){this.dataPrivilegeList=JSON.parse(this.$store.getters["privilege/getPrivilegeList"]),this.dataId=this.dataPrivilegeList[0].id},methods:Object(s["a"])({},Object(u["b"])({setToken:"auth/setToken",routeLogout:"auth/logout"}),Object(u["c"])({setDataId:"privilege/setDataId"}),{change:function(){var t=Object(n["a"])(regeneratorRuntime.mark(function t(){var e;return regeneratorRuntime.wrap(function(t){while(1)switch(t.prev=t.next){case 0:return t.next=2,o["a"].auth.getNewJWT(this.dataId);case 2:e=t.sent,e.data.data?(this.setToken(e.data.data),this.setDataId(this.dataId),this.$router.push({path:"/index"})):this.$message({showClose:!0,message:"获取新jwt失败",type:"error"});case 4:case"end":return t.stop()}},t,this)}));return function(){return t.apply(this,arguments)}}(),layout:function(){var t=this;this.$confirm("是否登出？").then(function(e){t.routeLogout(),Object(l["d"])()})},formatClient:function(t){return t.length>0?t.map(function(t){return t.clientName}).join("、"):""}})},d=c,h=(a("arM4"),a("KHd+")),v=Object(h["a"])(d,i,r,!1,null,null,null);e["default"]=v.exports},arM4:function(t,e,a){"use strict";var i=a("0iu6"),r=a.n(i);r.a}}]);
//# sourceMappingURL=1.057a9bff.js.map