// generated by codegen, do not edit
import codeql.rust.elements
import TestUtils

from Param x, int getNumberOfAttrs, string hasTy, string hasPat
where
  toBeTested(x) and
  not x.isUnknown() and
  getNumberOfAttrs = x.getNumberOfAttrs() and
  (if x.hasTy() then hasTy = "yes" else hasTy = "no") and
  if x.hasPat() then hasPat = "yes" else hasPat = "no"
select x, "getNumberOfAttrs:", getNumberOfAttrs, "hasTy:", hasTy, "hasPat:", hasPat
