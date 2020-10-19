(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([[7],{"4NIp":function(e,t,r){},aOMG:function(e,t,r){"use strict";var n=r("bIpD"),a=r.n(n);a.a},bIpD:function(e,t,r){},mP8J:function(e,t,r){"use strict";var n=r("4NIp"),a=r.n(n);a.a},re0e:function(e,t,r){},xjvw:function(e,t,r){"use strict";r.r(t);var n=function(){var e=this,t=e.$createElement,r=e._self._c||t;return r("el-container",{staticStyle:{"margin-top":"-10px"},attrs:{id:"organization"}},[r("el-main",[r("el-row",{attrs:{gutter:20}},[r("el-col",{attrs:{span:10}},[r("el-card",{attrs:{shadow:"always"}},[r("div",{attrs:{slot:"header"},slot:"header"},[r("span",[e._v("组织机构管理")])]),r("organization-tree",{ref:e.refs.tree,attrs:{showActionButton:!0,checkbox:!1},on:{clickNode:e.clickNode,add:e.add,edit:e.edit,remove:e.remove}})],1)],1),r("el-col",{attrs:{span:14}},[r("organization-form",{ref:e.refs.form,attrs:{content:e.form.content,action:e.form.action,disabled:e.form.disabled,show:e.form.show},on:{"update:show":function(t){e.$set(e.form,"show",t)},refreshTree:e.refreshTreeNode,afterAction:e.afterSubmit}})],1)],1)],1)],1)},a=[],o=(r("rGqo"),r("ls82"),r("MECJ")),i=function(){var e=this,t=e.$createElement,r=e._self._c||t;return r("el-card",{directives:[{name:"show",rawName:"v-show",value:!0===e.show,expression:"show === true"}],attrs:{shadow:"always"}},[r("div",{attrs:{slot:"header"},slot:"header"},[r("span",[e._v("组织信息")])]),r("el-form",{ref:e.ref,attrs:{model:e.content,rules:e.rules,"label-width":"100px",disabled:e.disabled}},[r("el-form-item",{attrs:{label:"组织编码",prop:"orgCode"}},[r("el-input",{attrs:{disabled:e.disabled},model:{value:e.content.orgCode,callback:function(t){e.$set(e.content,"orgCode",t)},expression:"content.orgCode"}})],1),r("el-form-item",{attrs:{label:"组织名称",prop:"orgName"}},[r("el-input",{attrs:{disabled:e.disabled},model:{value:e.content.orgName,callback:function(t){e.$set(e.content,"orgName",t)},expression:"content.orgName"}})],1),r("el-form-item",[r("el-button",{attrs:{type:"primary"},on:{click:e.onSubmit}},[e._v("提交")]),r("el-button",{on:{click:e.cancelAction}},[e._v("取消")])],1)],1)],1)},s=[],c=(r("VRzm"),{name:"OrganizationForm",props:["content","show","action","disabled"],data:function(){return{ref:"form",selects:[],rules:{orgCode:[{required:!0,message:"请输入组织编码",trigger:"blur"}],orgName:[{required:!0,message:"请输入组织名称",trigger:"blur"}]}}},created:function(){},watch:{action:function(e,t){this.$refs.form.resetFields()}},methods:{cancelAction:function(){this.$emit("update:show",!1)},onSubmit:function(){var e=this;this.$refs[this.ref].validate(function(){var t=Object(o["a"])(regeneratorRuntime.mark(function t(r){var n;return regeneratorRuntime.wrap(function(t){while(1)switch(t.prev=t.next){case 0:if(!r){t.next=5;break}return t.next=3,"add"==e.action?e.$api.organizations.addOrganization(e.content):"edit"==e.action?e.$api.organizations.editOrganization(e.content):null;case 3:n=t.sent,n.data.meta&&n.data.meta.success?(e.$message({showClose:!0,message:n.data.meta.message,type:"success"}),e.$emit("refreshTree",e.content.parentOrgId,!0)):e.$message({dangerouslyUseHTMLString:!0,showClose:!0,message:n.data.meta.message,type:"error"});case 5:case"end":return t.stop()}},t,this)}));return function(e){return t.apply(this,arguments)}}())}}}),d=c,u=(r("aOMG"),r("KHd+")),l=Object(u["a"])(d,i,s,!1,null,"31084f8d",null),f=l.exports,p=function(){var e=this,t=e.$createElement,r=e._self._c||t;return r("div",[r("el-row",{staticClass:"filter-query"},[r("el-col",{attrs:{span:4}},[r("span",{staticClass:"filter-span"},[e._v("组织名称")])]),r("el-col",{attrs:{span:12,offset:1}},[r("el-input",{attrs:{placeholder:"组织机构"},model:{value:e.organizationFilter,callback:function(t){e.organizationFilter=t},expression:"organizationFilter"}})],1),r("el-col",{staticClass:"filter-btn",attrs:{span:6,offset:1}},[r("el-button",{attrs:{type:"primary",size:"medium"},on:{click:function(t){return e.add(t)}}},[e._v("新增")])],1)],1),r("el-tree",{ref:e.ref,attrs:{data:e.tree.data,"node-key":"orgId",accordion:"",lazy:!0,load:e.asyncLoadTreeNode,"show-checkbox":e.checkbox,"highlight-current":!0,"expand-on-click-node":!1,"filter-node-method":e.filterNode,props:e.tree.defaultProps,"default-expanded-keys":e.expandedList},on:{"node-collapse":e.nodeCollapse,"node-expand":e.nodeExpand,"node-click":e.clickNode},scopedSlots:e._u([{key:"default",fn:function(t){var n=t.node,a=t.data;return r("span",{staticClass:"custom-tree-node"},[r("span",[e._v(e._s(a.orgName))]),e.showActionButton?r("span",[r("el-button",{attrs:{type:"text",size:"mini"},on:{click:function(t){return e.add(t,a,n)}}},[e._v("新增")]),r("el-button",{attrs:{type:"text",size:"mini"},on:{click:function(t){return e.edit(t,a,n)}}},[e._v("修改")]),r("el-button",{attrs:{type:"text",size:"mini"},on:{click:function(t){return e.remove(t,a,n)}}},[e._v("删除")])],1):e._e()])}}])})],1)},h=[],m={name:"OrganizationTree",props:{checkbox:{type:Boolean,require:!1,default:!1},showActionButton:{type:Boolean,require:!1,default:!1},rootId:{type:Boolean,require:!1,default:!1}},data:function(){return{ref:"tree",organizationFilter:"",expandedList:[],tree:{data:[],defaultProps:{isLeaf:"leaf"}}}},created:function(){this.initTreeNodes()},watch:{organizationFilter:function(e,t){this.$refs[this.ref].filter(e)}},methods:{asyncLoadTreeNode:function(){var e=Object(o["a"])(regeneratorRuntime.mark(function e(t,r){var n,a;return regeneratorRuntime.wrap(function(e){while(1)switch(e.prev=e.next){case 0:if(0===t.level){e.next=7;break}return n=[],e.next=4,this.$api.organizations.getOrganizationList(t.data.orgId);case 4:a=e.sent,a.data.data&&a.data.data.forEach(function(e){n.push({orgId:e.orgId,orgCode:e.orgCode,orgName:e.orgName,parentOrgId:e.parentOrgId,path:e.path,leaf:0===e.childCount})}),r(n);case 7:case"end":return e.stop()}},e,this)}));return function(t,r){return e.apply(this,arguments)}}(),initTreeNodes:function(){var e=Object(o["a"])(regeneratorRuntime.mark(function e(){var t,r=this;return regeneratorRuntime.wrap(function(e){while(1)switch(e.prev=e.next){case 0:return this.tree.data=[],e.next=3,this.$api.organizations.getOrganizationList("-1");case 3:t=e.sent,t.data.data&&t.data.data.forEach(function(e){r.tree.data.push({orgId:e.orgId,orgCode:e.orgCode,orgName:e.orgName,parentOrgId:e.parentOrgId,path:e.path,leaf:0===e.childCount})});case 5:case"end":return e.stop()}},e,this)}));return function(){return e.apply(this,arguments)}}(),add:function(e,t,r){this.$emit("add",e,t,r)},edit:function(e,t,r){this.$emit("edit",e,t,r)},remove:function(e,t,r){this.$emit("remove",e,t,r)},clickNode:function(e,t,r){this.$emit("clickNode",e,t,r)},filterNode:function(e,t){return!e||-1!==t.orgName.indexOf(e)},nodeExpand:function(e){this.expandedList.push(e.orgId)},nodeCollapse:function(e){this.expandedList.splice(this.expandedList.indexOf(e.orgId),1)},getCheckedNodes:function(){return this.$refs[this.ref].getCheckedNodes()},getElementTreeRef:function(){return this.$refs[this.ref]}}},g=m,w=(r("zfkf"),Object(u["a"])(g,p,h,!1,null,null,null)),b=w.exports,v={name:"OrganizationSection",components:{"organization-form":f,"organization-tree":b},data:function(){return{refs:{tree:"tree",form:"form"},form:{content:{},show:!1,disabled:!0,action:"detail"}}},methods:{add:function(e,t,r){e.stopPropagation(),this.form.show=!0,this.form.disabled=!1,this.form.action="add",this.form.content={parentOrgId:r?t.orgId:"-1",path:r?t.path:""}},edit:function(e,t,r){e.stopPropagation(),this.form.show=!0,this.form.disabled=!1,this.form.action="edit",this.form.content={parentOrgId:t.parentOrgId,orgId:t.orgId,orgName:t.orgName,orgCode:t.orgCode,path:t.path}},remove:function(){var e=Object(o["a"])(regeneratorRuntime.mark(function e(t,r,n){var a=this;return regeneratorRuntime.wrap(function(e){while(1)switch(e.prev=e.next){case 0:if(t.stopPropagation(),n.isLeaf){e.next=4;break}return this.$message({showClose:!0,message:"该节点下存在子节点，不允许删除！",type:"error"}),e.abrupt("return");case 4:this.$confirm("此操作将删除资源【".concat(r.orgName,"】，是否继续？"),"删除",{type:"warning"}).then(Object(o["a"])(regeneratorRuntime.mark(function e(){var t;return regeneratorRuntime.wrap(function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,a.$api.organizations.deleteOrganization(r.orgId);case 2:t=e.sent,a.$message({showClose:!0,message:t.data.meta.message,type:t.data.meta.success?"success":"error"}),a.form.show=!1,a.refreshTreeNode(r.parentOrgId,!0);case 6:case"end":return e.stop()}},e,this)})));case 5:case"end":return e.stop()}},e,this)}));return function(t,r,n){return e.apply(this,arguments)}}(),clickNode:function(e,t,r){this.form.content={parentOrgId:e.parentOrgId,orgId:e.orgId,orgName:e.orgName,orgCode:e.orgCode},this.form.show=!0,this.form.disabled=!0,this.form.action="detail"},refreshTreeNode:function(){var e=Object(o["a"])(regeneratorRuntime.mark(function e(t,r){var n,a,o,i;return regeneratorRuntime.wrap(function(e){while(1)switch(e.prev=e.next){case 0:return this.form.disabled=r,e.next=3,this.$api.organizations.getOrganizationList(t);case 3:if(n=e.sent,a=[],n.data.data&&n.data.data.forEach(function(e){a.push({orgId:e.orgId,orgCode:e.orgCode,orgName:e.orgName,parentOrgId:e.parentOrgId,path:e.path,leaf:0===e.childCount})}),-1!=t){e.next=9;break}return this.$refs[this.refs.tree].initTreeNodes(),e.abrupt("return",1);case 9:return o=t,i=this.$refs[this.refs.tree].getElementTreeRef().getNode(o),i.expand(),this.$refs[this.refs.tree].getElementTreeRef().updateKeyChildren(t,a),e.abrupt("return",1);case 14:case"end":return e.stop()}},e,this)}));return function(t,r){return e.apply(this,arguments)}}(),afterSubmit:function(){}}},x=v,k=(r("mP8J"),Object(u["a"])(x,n,a,!1,null,"977d878e",null));t["default"]=k.exports},zfkf:function(e,t,r){"use strict";var n=r("re0e"),a=r.n(n);a.a}}]);
//# sourceMappingURL=7.df5dfe90.js.map