// generated by codegen, do not edit
import codeql.rust.elements
import TestUtils

from
  Variant x, int getNumberOfAttrs, string hasExpr, string hasFieldList, string hasName,
  string hasVisibility
where
  toBeTested(x) and
  not x.isUnknown() and
  getNumberOfAttrs = x.getNumberOfAttrs() and
  (if x.hasExpr() then hasExpr = "yes" else hasExpr = "no") and
  (if x.hasFieldList() then hasFieldList = "yes" else hasFieldList = "no") and
  (if x.hasName() then hasName = "yes" else hasName = "no") and
  if x.hasVisibility() then hasVisibility = "yes" else hasVisibility = "no"
select x, "getNumberOfAttrs:", getNumberOfAttrs, "hasExpr:", hasExpr, "hasFieldList:", hasFieldList,
  "hasName:", hasName, "hasVisibility:", hasVisibility
