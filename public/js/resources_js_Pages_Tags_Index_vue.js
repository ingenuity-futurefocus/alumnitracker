(self["webpackChunk"] = self["webpackChunk"] || []).push([["resources_js_Pages_Tags_Index_vue"],{

/***/ "./node_modules/babel-loader/lib/index.js??clonedRuleSet-5[0].rules[0].use[0]!./node_modules/vue-loader/lib/index.js??vue-loader-options!./resources/js/Pages/Tags/Index.vue?vue&type=script&lang=js&":
/*!************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib/index.js??clonedRuleSet-5[0].rules[0].use[0]!./node_modules/vue-loader/lib/index.js??vue-loader-options!./resources/js/Pages/Tags/Index.vue?vue&type=script&lang=js& ***!
  \************************************************************************************************************************************************************************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "default": () => (__WEBPACK_DEFAULT_EXPORT__)
/* harmony export */ });
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
/* harmony default export */ const __WEBPACK_DEFAULT_EXPORT__ = ({
  props: {
    employmentTags: Array,
    enrollmentTags: Array
  },
  data: function data() {
    return {
      tabToShow: "employment",
      employmentTagForm: this.$inertia.form({
        tag: ""
      }),
      enrollmentTagForm: this.$inertia.form({
        tag: ""
      })
    };
  },
  methods: {
    addEmploymentTag: function addEmploymentTag() {
      this.employmentTagForm.post("/tags/employment/create");
    },
    addEnrollmentTag: function addEnrollmentTag() {
      this.enrollmentTagForm.post("/tags/enrollment/create");
    }
  }
});

/***/ }),

/***/ "./resources/js/Pages/Tags/Index.vue":
/*!*******************************************!*\
  !*** ./resources/js/Pages/Tags/Index.vue ***!
  \*******************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "default": () => (__WEBPACK_DEFAULT_EXPORT__)
/* harmony export */ });
/* harmony import */ var _Index_vue_vue_type_template_id_080a03a5_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./Index.vue?vue&type=template&id=080a03a5&scoped=true& */ "./resources/js/Pages/Tags/Index.vue?vue&type=template&id=080a03a5&scoped=true&");
/* harmony import */ var _Index_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./Index.vue?vue&type=script&lang=js& */ "./resources/js/Pages/Tags/Index.vue?vue&type=script&lang=js&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! !../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");





/* normalize component */
;
var component = (0,_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_2__.default)(
  _Index_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__.default,
  _Index_vue_vue_type_template_id_080a03a5_scoped_true___WEBPACK_IMPORTED_MODULE_0__.render,
  _Index_vue_vue_type_template_id_080a03a5_scoped_true___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns,
  false,
  null,
  "080a03a5",
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "resources/js/Pages/Tags/Index.vue"
/* harmony default export */ const __WEBPACK_DEFAULT_EXPORT__ = (component.exports);

/***/ }),

/***/ "./resources/js/Pages/Tags/Index.vue?vue&type=script&lang=js&":
/*!********************************************************************!*\
  !*** ./resources/js/Pages/Tags/Index.vue?vue&type=script&lang=js& ***!
  \********************************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "default": () => (__WEBPACK_DEFAULT_EXPORT__)
/* harmony export */ });
/* harmony import */ var _node_modules_babel_loader_lib_index_js_clonedRuleSet_5_0_rules_0_use_0_node_modules_vue_loader_lib_index_js_vue_loader_options_Index_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../node_modules/babel-loader/lib/index.js??clonedRuleSet-5[0].rules[0].use[0]!../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./Index.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js??clonedRuleSet-5[0].rules[0].use[0]!./node_modules/vue-loader/lib/index.js??vue-loader-options!./resources/js/Pages/Tags/Index.vue?vue&type=script&lang=js&");
 /* harmony default export */ const __WEBPACK_DEFAULT_EXPORT__ = (_node_modules_babel_loader_lib_index_js_clonedRuleSet_5_0_rules_0_use_0_node_modules_vue_loader_lib_index_js_vue_loader_options_Index_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__.default); 

/***/ }),

/***/ "./resources/js/Pages/Tags/Index.vue?vue&type=template&id=080a03a5&scoped=true&":
/*!**************************************************************************************!*\
  !*** ./resources/js/Pages/Tags/Index.vue?vue&type=template&id=080a03a5&scoped=true& ***!
  \**************************************************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": () => (/* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Index_vue_vue_type_template_id_080a03a5_scoped_true___WEBPACK_IMPORTED_MODULE_0__.render),
/* harmony export */   "staticRenderFns": () => (/* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Index_vue_vue_type_template_id_080a03a5_scoped_true___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns)
/* harmony export */ });
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Index_vue_vue_type_template_id_080a03a5_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./Index.vue?vue&type=template&id=080a03a5&scoped=true& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./resources/js/Pages/Tags/Index.vue?vue&type=template&id=080a03a5&scoped=true&");


/***/ }),

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./resources/js/Pages/Tags/Index.vue?vue&type=template&id=080a03a5&scoped=true&":
/*!*****************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./resources/js/Pages/Tags/Index.vue?vue&type=template&id=080a03a5&scoped=true& ***!
  \*****************************************************************************************************************************************************************************************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": () => (/* binding */ render),
/* harmony export */   "staticRenderFns": () => (/* binding */ staticRenderFns)
/* harmony export */ });
var render = function() {
  var _vm = this
  var _h = _vm.$createElement
  var _c = _vm._self._c || _h
  return _c(
    "div",
    { staticStyle: { "max-width": "600px" }, attrs: { id: "tag-management" } },
    [
      _c("div", { staticClass: "text-center" }, [
        _c(
          "button",
          {
            staticClass: "isl-button",
            on: {
              click: function($event) {
                _vm.tabToShow = "employment"
              }
            }
          },
          [_vm._v("Employment Tags")]
        ),
        _vm._v(" "),
        _c(
          "button",
          {
            staticClass: "isl-button",
            on: {
              click: function($event) {
                _vm.tabToShow = "enrollment"
              }
            }
          },
          [_vm._v("Enrollment Tags")]
        ),
        _vm._v(" "),
        _c("p", [_vm._v(" ")])
      ]),
      _vm._v(" "),
      _vm.tabToShow == "employment"
        ? _c("div", { staticClass: "employment" }, [
            _c(
              "h2",
              { staticStyle: { "text-align": "center", padding: "0 0 32px" } },
              [_vm._v("Employment Tag Management")]
            ),
            _vm._v(" "),
            _c("div", { staticClass: "flex" }, [
              _c("div", { staticClass: "text-xl font-bold pr-2 py-2" }, [
                _vm._v("Tag Name:")
              ]),
              _vm._v(" "),
              _c("div", { staticClass: "flex-1" }, [
                _c("input", {
                  directives: [
                    {
                      name: "model",
                      rawName: "v-model",
                      value: _vm.employmentTagForm.tag,
                      expression: "employmentTagForm.tag"
                    }
                  ],
                  staticClass: "width: 100%",
                  attrs: { type: "text" },
                  domProps: { value: _vm.employmentTagForm.tag },
                  on: {
                    keyup: function($event) {
                      if (
                        !$event.type.indexOf("key") &&
                        _vm._k($event.keyCode, "enter", 13, $event.key, "Enter")
                      ) {
                        return null
                      }
                      return _vm.addEmploymentTag()
                    },
                    input: function($event) {
                      if ($event.target.composing) {
                        return
                      }
                      _vm.$set(
                        _vm.employmentTagForm,
                        "tag",
                        $event.target.value
                      )
                    }
                  }
                })
              ])
            ]),
            _vm._v(" "),
            _c(
              "div",
              { staticClass: "allTags" },
              _vm._l(_vm.employmentTags, function(tag) {
                return _c(
                  "span",
                  [
                    _vm._v("\r\n                " + _vm._s(tag.tag) + " "),
                    _c(
                      "inertia-link",
                      {
                        staticStyle: { "font-weight": "bold" },
                        attrs: { href: "/tags/employment/delete/" + tag.id }
                      },
                      [_vm._v("X")]
                    )
                  ],
                  1
                )
              }),
              0
            )
          ])
        : _vm._e(),
      _vm._v(" "),
      _vm.tabToShow == "enrollment"
        ? _c("div", { staticClass: "enrollment" }, [
            _c(
              "h2",
              { staticStyle: { "text-align": "center", padding: "0 0 32px" } },
              [_vm._v("Enrollment Tag Management")]
            ),
            _vm._v(" "),
            _c("div", { staticClass: "flex" }, [
              _c("div", { staticClass: "text-xl font-bold pr-2 py-2" }, [
                _vm._v("Tag Name:")
              ]),
              _vm._v(" "),
              _c("div", { staticClass: "flex-1" }, [
                _c("input", {
                  directives: [
                    {
                      name: "model",
                      rawName: "v-model",
                      value: _vm.enrollmentTagForm.tag,
                      expression: "enrollmentTagForm.tag"
                    }
                  ],
                  staticClass: "width: 100%",
                  attrs: { type: "text" },
                  domProps: { value: _vm.enrollmentTagForm.tag },
                  on: {
                    keyup: function($event) {
                      if (
                        !$event.type.indexOf("key") &&
                        _vm._k($event.keyCode, "enter", 13, $event.key, "Enter")
                      ) {
                        return null
                      }
                      return _vm.addEnrollmentTag()
                    },
                    input: function($event) {
                      if ($event.target.composing) {
                        return
                      }
                      _vm.$set(
                        _vm.enrollmentTagForm,
                        "tag",
                        $event.target.value
                      )
                    }
                  }
                })
              ])
            ]),
            _vm._v(" "),
            _c(
              "div",
              { staticClass: "allTags" },
              _vm._l(_vm.enrollmentTags, function(tag) {
                return _c(
                  "span",
                  [
                    _vm._v("\r\n                " + _vm._s(tag.tag) + " "),
                    _c(
                      "inertia-link",
                      {
                        staticStyle: { "font-weight": "bold" },
                        attrs: { href: "/tags/enrollment/delete/" + tag.id }
                      },
                      [_vm._v("X")]
                    )
                  ],
                  1
                )
              }),
              0
            )
          ])
        : _vm._e()
    ]
  )
}
var staticRenderFns = []
render._withStripped = true



/***/ })

}]);