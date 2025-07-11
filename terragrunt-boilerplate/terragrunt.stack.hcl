func contains(slice []string, item string) bool {
    for _, s := range slice {
        if s == item {
            return true
        }
    }
    return false
}

{ { if eq(contains(units, "none")) } }
{ { end } }

{ { if eq(contains(units, "unit1")) } }
# Unit 1 specific configuration
{ { end } }

{ { if eq(contains(units, "unit2")) } }
# Unit 2 specific configuration
{ { end } }

{ { if eq(contains(units, "unit3")) } }
# Unit 3 specific configuration
{ { end } }