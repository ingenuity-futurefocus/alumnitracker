(self["webpackChunk"] = self["webpackChunk"] || []).push([["resources_js_Pages_Alumnus_Show_vue"],{

/***/ "./node_modules/babel-loader/lib/index.js??clonedRuleSet-5[0].rules[0].use[0]!./node_modules/vue-loader/lib/index.js??vue-loader-options!./resources/js/Pages/Alumnus/Show.vue?vue&type=script&lang=js&":
/*!**************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib/index.js??clonedRuleSet-5[0].rules[0].use[0]!./node_modules/vue-loader/lib/index.js??vue-loader-options!./resources/js/Pages/Alumnus/Show.vue?vue&type=script&lang=js& ***!
  \**************************************************************************************************************************************************************************************************************/
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
  components: {},
  props: {
    person: Object,
    address: Object,
    alumnus: Array,
    checkins: Array,
    duedate: String,
    schools: Array,
    employers: Array,
    employmentTags: Array,
    enrollmentTags: Array,
    availableCredentials: Array,
    earnedCredentials: Array,
    credentialTypes: Array
  },
  methods: {
    changeTabs: function changeTabs(tabName) {
      this.activeDataTab = tabName;
    },
    checkinOverdue: function checkinOverdue() {
      var duedate = new Date(this.duedate);
      var current = new Date();
      return duedate < current;
    },
    saveCredential: function saveCredential() {
      this.credentialForm.post("/alumnus/saveCredential");
      this.addCredentialForm = false;
    },
    updateFocusList: function updateFocusList() {
      var _this = this;

      this.focusList = this.credentialForm.school ? this.availableCredentials.filter(function (cred) {
        return cred.awarder_id == _this.credentialForm.school;
      }) : [];
      this.focusList = this.credentialForm.type ? this.focusList.filter(function (cred) {
        return cred.type_id == _this.credentialForm.type;
      }) : [];
    },
    addEmployment: function addEmployment(checkinID) {
      this.employmentForm.checkin_id = checkinID;
      this.checkinTab = 'employed';
    },
    addEnrollment: function addEnrollment(checkinID) {
      this.enrollmentForm.checkin_id = checkinID;
      this.checkinTab = 'enrolled';
    }
  },
  data: function data() {
    return {
      focusList: [],
      addCredentialForm: false,
      activeDataTab: "alumnus",
      checkinTab: "none",
      credentialForm: this.$inertia.form({
        personID: this.person.id,
        type: "",
        focus: "",
        school: "",
        date: ""
      }),
      checkinForm: this.$inertia.form({
        personID: this.person.id,
        occured: "",
        notes: "",
        employed: false,
        enrolled: false,
        caregiver: false,
        tags: []
      }),
      employmentForm: this.$inertia.form({
        checkin_id: "",
        employer_id: "",
        start_date: "",
        title: "",
        tags: []
      }),
      enrollmentForm: this.$inertia.form({
        checkin_id: "",
        awarder_id: "",
        start_date: ""
      })
    };
  }
});

/***/ }),

/***/ "./resources/js/Pages/Alumnus/Show.vue":
/*!*********************************************!*\
  !*** ./resources/js/Pages/Alumnus/Show.vue ***!
  \*********************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "default": () => (__WEBPACK_DEFAULT_EXPORT__)
/* harmony export */ });
/* harmony import */ var _Show_vue_vue_type_template_id_712b916c_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./Show.vue?vue&type=template&id=712b916c&scoped=true& */ "./resources/js/Pages/Alumnus/Show.vue?vue&type=template&id=712b916c&scoped=true&");
/* harmony import */ var _Show_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./Show.vue?vue&type=script&lang=js& */ "./resources/js/Pages/Alumnus/Show.vue?vue&type=script&lang=js&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! !../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");





/* normalize component */
;
var component = (0,_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_2__.default)(
  _Show_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__.default,
  _Show_vue_vue_type_template_id_712b916c_scoped_true___WEBPACK_IMPORTED_MODULE_0__.render,
  _Show_vue_vue_type_template_id_712b916c_scoped_true___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns,
  false,
  null,
  "712b916c",
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "resources/js/Pages/Alumnus/Show.vue"
/* harmony default export */ const __WEBPACK_DEFAULT_EXPORT__ = (component.exports);

/***/ }),

/***/ "./resources/js/Pages/Alumnus/Show.vue?vue&type=script&lang=js&":
/*!**********************************************************************!*\
  !*** ./resources/js/Pages/Alumnus/Show.vue?vue&type=script&lang=js& ***!
  \**********************************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "default": () => (__WEBPACK_DEFAULT_EXPORT__)
/* harmony export */ });
/* harmony import */ var _node_modules_babel_loader_lib_index_js_clonedRuleSet_5_0_rules_0_use_0_node_modules_vue_loader_lib_index_js_vue_loader_options_Show_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../node_modules/babel-loader/lib/index.js??clonedRuleSet-5[0].rules[0].use[0]!../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./Show.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js??clonedRuleSet-5[0].rules[0].use[0]!./node_modules/vue-loader/lib/index.js??vue-loader-options!./resources/js/Pages/Alumnus/Show.vue?vue&type=script&lang=js&");
 /* harmony default export */ const __WEBPACK_DEFAULT_EXPORT__ = (_node_modules_babel_loader_lib_index_js_clonedRuleSet_5_0_rules_0_use_0_node_modules_vue_loader_lib_index_js_vue_loader_options_Show_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__.default); 

/***/ }),

/***/ "./resources/js/Pages/Alumnus/Show.vue?vue&type=template&id=712b916c&scoped=true&":
/*!****************************************************************************************!*\
  !*** ./resources/js/Pages/Alumnus/Show.vue?vue&type=template&id=712b916c&scoped=true& ***!
  \****************************************************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": () => (/* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Show_vue_vue_type_template_id_712b916c_scoped_true___WEBPACK_IMPORTED_MODULE_0__.render),
/* harmony export */   "staticRenderFns": () => (/* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Show_vue_vue_type_template_id_712b916c_scoped_true___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns)
/* harmony export */ });
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Show_vue_vue_type_template_id_712b916c_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./Show.vue?vue&type=template&id=712b916c&scoped=true& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./resources/js/Pages/Alumnus/Show.vue?vue&type=template&id=712b916c&scoped=true&");


/***/ }),

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./resources/js/Pages/Alumnus/Show.vue?vue&type=template&id=712b916c&scoped=true&":
/*!*******************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./resources/js/Pages/Alumnus/Show.vue?vue&type=template&id=712b916c&scoped=true& ***!
  \*******************************************************************************************************************************************************************************************************************************/
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
  return _c("div", { staticClass: "text-center" }, [
    _c("div", { staticClass: "contact text-left" }, [
      _c("p", [
        _c("strong", [
          _vm._v(
            _vm._s(_vm.person.first_name) + " " + _vm._s(_vm.person.last_name)
          )
        ]),
        _vm._v(" "),
        _c(
          "span",
          [
            _c(
              "inertia-link",
              { attrs: { href: "/alumnus/edit/" + _vm.person.id } },
              [_vm._v("Edit")]
            )
          ],
          1
        )
      ]),
      _vm._v(" "),
      _c("br"),
      _vm._v(" "),
      _c("p", [
        _c("strong", [_vm._v("Phone:")]),
        _vm._v(" "),
        _c("span", [_vm._v(_vm._s(_vm.person.phone))])
      ]),
      _vm._v(" "),
      _c("p", [
        _c("strong", [_vm._v("Email:")]),
        _vm._v(" "),
        _c("span", [_vm._v(_vm._s(_vm.person.email))])
      ]),
      _vm._v(" "),
      _c("br"),
      _vm._v(" "),
      _c("p", [
        _c("strong", [_vm._v("Address:")]),
        _vm._v(" "),
        _c("span", [_vm._v(_vm._s(_vm.address["line1"]))])
      ]),
      _vm._v(" "),
      _c("p", [
        _c("strong"),
        _vm._v(" "),
        _c("span", [_vm._v(_vm._s(_vm.address["line2"]))])
      ])
    ]),
    _vm._v(" "),
    _c("ul", { staticClass: "inline gutters" }, [
      _c("li", [
        _c(
          "a",
          {
            attrs: { href: "#" },
            on: {
              click: function($event) {
                return _vm.changeTabs("alumnus")
              }
            }
          },
          [_c("strong", [_vm._v("Alumnus Of")])]
        )
      ]),
      _vm._v(" "),
      _c("li", [
        _c(
          "a",
          {
            attrs: { href: "#" },
            on: {
              click: function($event) {
                return _vm.changeTabs("checkins")
              }
            }
          },
          [_c("strong", [_vm._v("Check - Ins")])]
        )
      ]),
      _vm._v(" "),
      _c("li", [
        _c(
          "a",
          {
            attrs: { href: "#" },
            on: {
              click: function($event) {
                return _vm.changeTabs("credentials")
              }
            }
          },
          [_c("strong", [_vm._v("Credentials")])]
        )
      ])
    ]),
    _vm._v(" "),
    _vm.activeDataTab == "alumnus"
      ? _c("div", { staticClass: "alumnus-data" }, [
          _vm.alumnus
            ? _c(
                "ul",
                { staticClass: "cardWrap mx-auto text-left" },
                _vm._l(_vm.alumnus, function(row) {
                  return _c("li", { staticClass: "card font-bold" }, [
                    _c("p", [_vm._v(_vm._s(row.organization))]),
                    _vm._v(" "),
                    _c("p", [_vm._v(_vm._s(row.program))]),
                    _vm._v(" "),
                    _c("p", [_vm._v(_vm._s(row.year))])
                  ])
                }),
                0
              )
            : _c("p", [_c("em", [_vm._v("No Alumnus data to display")])])
        ])
      : _vm._e(),
    _vm._v(" "),
    _vm.activeDataTab == "checkins"
      ? _c(
          "div",
          {
            staticClass: "checkin-data",
            staticStyle: { "max-width": "350px" }
          },
          [
            _c("p", [_vm._v("As of: Today's Date")]),
            _vm._v(" "),
            _vm.checkinTab === "none"
              ? _c(
                  "div",
                  [
                    _c(
                      "inertia-link",
                      {
                        staticClass: "isl-button",
                        attrs: { href: "/checkins/create/" + _vm.person.id }
                      },
                      [_vm._v("Add Check-In")]
                    ),
                    _vm._v(" "),
                    _c("br"),
                    _vm._v(" "),
                    _c("br"),
                    _vm._v(" "),
                    _vm.checkins
                      ? _c(
                          "ul",
                          { staticClass: "cardWrap mx-auto text-left" },
                          [
                            _vm.checkinOverdue()
                              ? _c("li", { staticClass: "card" }, [
                                  _vm._v("\r\n                    Next: "),
                                  _c(
                                    "span",
                                    { staticClass: "text-red-700 font-bold" },
                                    [_vm._v("OVERDUE")]
                                  ),
                                  _c("br"),
                                  _vm._v(
                                    _vm._s(_vm.duedate) + "\r\n                "
                                  )
                                ])
                              : _vm._e(),
                            _vm._v(" "),
                            _vm._l(_vm.checkins, function(row) {
                              return _c(
                                "li",
                                { staticClass: "card" },
                                [
                                  _c("p", [
                                    _vm._v(
                                      _vm._s(row.date) +
                                        " (with " +
                                        _vm._s(row.user) +
                                        ")"
                                    )
                                  ]),
                                  _vm._v(" "),
                                  row.needWork
                                    ? _c("p", [
                                        _c("em", [_vm._v("Needs Work Added")])
                                      ])
                                    : _vm._e(),
                                  _vm._v(" "),
                                  row.needSchool
                                    ? _c("p", [
                                        _c("em", [_vm._v("Needs School Added")])
                                      ])
                                    : _vm._e(),
                                  _vm._v(" "),
                                  _c("p", [_vm._v(" ")]),
                                  _vm._v(" "),
                                  _c(
                                    "inertia-link",
                                    {
                                      staticClass: "slim-button",
                                      attrs: {
                                        href: "/checkins/show/" + row.id
                                      }
                                    },
                                    [_vm._v("Edit")]
                                  )
                                ],
                                1
                              )
                            })
                          ],
                          2
                        )
                      : _c(
                          "ul",
                          { staticClass: "cardWrap mx-auto text-left" },
                          [
                            _vm.checkinOverdue()
                              ? _c("li", { staticClass: "card" }, [
                                  _vm._v("\r\n                    Next: "),
                                  _c(
                                    "span",
                                    { staticClass: "text-red-700 font-bold" },
                                    [_vm._v("OVERDUE")]
                                  ),
                                  _c("br"),
                                  _vm._v(
                                    _vm._s(_vm.duedate) + "\r\n                "
                                  )
                                ])
                              : _vm._e()
                          ]
                        )
                  ],
                  1
                )
              : _vm._e()
          ]
        )
      : _vm._e(),
    _vm._v(" "),
    _vm.activeDataTab == "credentials"
      ? _c("div", { staticClass: "credential-data" }, [
          _vm.addCredentialForm == false
            ? _c("div", [
                _c(
                  "button",
                  {
                    staticClass: "isl-button",
                    on: {
                      click: function($event) {
                        _vm.addCredentialForm = true
                      }
                    }
                  },
                  [_vm._v("Add New Credential")]
                ),
                _vm._v(" "),
                _c("br"),
                _vm._v(" "),
                _c("br"),
                _vm._v(" "),
                _vm.earnedCredentials
                  ? _c(
                      "ul",
                      { staticClass: "cardWrap mx-auto text-left" },
                      _vm._l(_vm.earnedCredentials, function(row) {
                        return _c("li", { staticClass: "card font-bold" }, [
                          _c("p", [_vm._v(_vm._s(row.type))]),
                          _vm._v(" "),
                          _c("p", [_vm._v(_vm._s(row.name))]),
                          _vm._v(" "),
                          _c("p", [_vm._v(_vm._s(row.org))]),
                          _vm._v(" "),
                          _c("p", [_vm._v(_vm._s(row.date))])
                        ])
                      }),
                      0
                    )
                  : _c("p", [
                      _c("em", [_vm._v("No Credential data to display")])
                    ])
              ])
            : _vm._e(),
          _vm._v(" "),
          _vm.addCredentialForm
            ? _c("div", { staticStyle: { "max-width": "350px" } }, [
                _c("div", { staticClass: "form-group mb-3" }, [
                  _c("label", { attrs: { for: "" } }, [_vm._v("School")]),
                  _vm._v(" "),
                  _c(
                    "select",
                    {
                      directives: [
                        {
                          name: "model",
                          rawName: "v-model",
                          value: _vm.credentialForm.school,
                          expression: "credentialForm.school"
                        }
                      ],
                      on: {
                        change: [
                          function($event) {
                            var $$selectedVal = Array.prototype.filter
                              .call($event.target.options, function(o) {
                                return o.selected
                              })
                              .map(function(o) {
                                var val = "_value" in o ? o._value : o.value
                                return val
                              })
                            _vm.$set(
                              _vm.credentialForm,
                              "school",
                              $event.target.multiple
                                ? $$selectedVal
                                : $$selectedVal[0]
                            )
                          },
                          function($event) {
                            return _vm.updateFocusList()
                          }
                        ]
                      }
                    },
                    _vm._l(_vm.schools, function(row) {
                      return _c(
                        "option",
                        { key: row.id, domProps: { value: row.id } },
                        [_vm._v(_vm._s(row.name))]
                      )
                    }),
                    0
                  )
                ]),
                _vm._v(" "),
                _c("div", { staticClass: "form-group mb-3" }, [
                  _c("label", { attrs: { for: "" } }, [_vm._v("Type")]),
                  _vm._v(" "),
                  _c(
                    "select",
                    {
                      directives: [
                        {
                          name: "model",
                          rawName: "v-model",
                          value: _vm.credentialForm.type,
                          expression: "credentialForm.type"
                        }
                      ],
                      on: {
                        change: [
                          function($event) {
                            var $$selectedVal = Array.prototype.filter
                              .call($event.target.options, function(o) {
                                return o.selected
                              })
                              .map(function(o) {
                                var val = "_value" in o ? o._value : o.value
                                return val
                              })
                            _vm.$set(
                              _vm.credentialForm,
                              "type",
                              $event.target.multiple
                                ? $$selectedVal
                                : $$selectedVal[0]
                            )
                          },
                          function($event) {
                            return _vm.updateFocusList()
                          }
                        ]
                      }
                    },
                    _vm._l(_vm.credentialTypes, function(row) {
                      return _c(
                        "option",
                        { key: row.id, domProps: { value: row.id } },
                        [_vm._v(_vm._s(row.type))]
                      )
                    }),
                    0
                  )
                ]),
                _vm._v(" "),
                _c("div", { staticClass: "form-group mb-3" }, [
                  _c("label", { attrs: { for: "" } }, [_vm._v("Focus")]),
                  _vm._v(" "),
                  _c(
                    "select",
                    {
                      directives: [
                        {
                          name: "model",
                          rawName: "v-model",
                          value: _vm.credentialForm.focus,
                          expression: "credentialForm.focus"
                        }
                      ],
                      on: {
                        change: function($event) {
                          var $$selectedVal = Array.prototype.filter
                            .call($event.target.options, function(o) {
                              return o.selected
                            })
                            .map(function(o) {
                              var val = "_value" in o ? o._value : o.value
                              return val
                            })
                          _vm.$set(
                            _vm.credentialForm,
                            "focus",
                            $event.target.multiple
                              ? $$selectedVal
                              : $$selectedVal[0]
                          )
                        }
                      }
                    },
                    _vm._l(_vm.focusList, function(row) {
                      return _c(
                        "option",
                        { key: row.id, domProps: { value: row.id } },
                        [_vm._v(_vm._s(row.focus))]
                      )
                    }),
                    0
                  )
                ]),
                _vm._v(" "),
                _c("div", { staticClass: "form-group mb-3" }, [
                  _c("label", { attrs: { for: "" } }, [_vm._v("Date")]),
                  _vm._v(" "),
                  _c("input", {
                    directives: [
                      {
                        name: "model",
                        rawName: "v-model",
                        value: _vm.credentialForm.date,
                        expression: "credentialForm.date"
                      }
                    ],
                    attrs: { type: "date" },
                    domProps: { value: _vm.credentialForm.date },
                    on: {
                      input: function($event) {
                        if ($event.target.composing) {
                          return
                        }
                        _vm.$set(
                          _vm.credentialForm,
                          "date",
                          $event.target.value
                        )
                      }
                    }
                  })
                ]),
                _vm._v(" "),
                _c("br"),
                _vm._v(" "),
                _c(
                  "button",
                  {
                    staticClass: "isl-button",
                    on: {
                      click: function($event) {
                        return _vm.saveCredential()
                      }
                    }
                  },
                  [_vm._v("Save Credential")]
                )
              ])
            : _vm._e()
        ])
      : _vm._e()
  ])
}
var staticRenderFns = []
render._withStripped = true



/***/ })

}]);