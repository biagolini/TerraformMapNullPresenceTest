locals {
  my_tests ={ 
    // Test any null
    test_1  = sum([for d in var.map-1: d==null ? 0 : 1])>0 ? "AT LEAST ONE NOT-NULL" : "ALL NULL"
    test_2  = sum([for d in var.map-2: d==null ? 0 : 1])>0 ? "AT LEAST ONE NOT-NULL" : "ALL NULL"
    test_3  = sum([for d in var.map-3: d==null ? 0 : 1])>0 ? "AT LEAST ONE NOT-NULL" : "ALL NULL"

    // Test at least on null 
    test_4  = sum([for d in var.map-1: d==null ? 0 : 1])==length(var.map-1) ? "ALL NOT-NULL" : "AT LEAST ONE NULL"
    test_5  = sum([for d in var.map-2: d==null ? 0 : 1])==length(var.map-2) ? "ALL NOT-NULL" : "AT LEAST ONE NULL"
    test_6  = sum([for d in var.map-3: d==null ? 0 : 1])==length(var.map-3) ? "ALL NOT-NULL" : "AT LEAST ONE NULL"

  }
}