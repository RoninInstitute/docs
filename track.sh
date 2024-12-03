#!/bin/bash
#
# tracks Reframe Ronin documents versions using Preston [1,2]
#
#
# [1] Elliott M.J., Poelen J.H., Fortes J.A.B. (2020). Toward Reliable Biodiversity Dataset References. Ecological Informatics. https://doi.org/10.1016/j.ecoinf.2020.101132 hash://sha256/136c3c1808bcf463bb04b11622bb2e7b5fba28f5be1fc258c5ea55b3b84f482c
#
# [2] Elliott M.J., Poelen, J.H. & Fortes, J.A.B. (2023) Signing data citations enables data verification and citation persistence. Sci Data. https://doi.org/10.1038/s41597-023-02230-y hash://sha256/f849c870565f608899f183ca261365dce9c9f1c5441b1c779e0db49df9c2a19d
#

create_alias() {
  local alias_name="$1"
  preston alias | grep docx | head -n1 | preston cat > "${alias_name}.docx"
  preston alias | grep pdf | head -n1 | preston cat > "${alias_name}.pdf"
}

preston track https://docs.google.com/document/d/1lyAYpU67imn5ceAjzv4UDGlmqw0F_mpW_oRRqb-C6FI/edit 

create_alias "reframing-ronin"

preston track https://docs.google.com/document/d/11ObGQkSDG3-72sgqlqa3rQ5GUvorB1PaU5J5LwQHvAc/edit

create_alias "bylaws-notes"

preston track https://docs.google.com/document/d/18iwEiHUZlCjvi_Z-t35vechAHvIM07ltmIrDvkUPxhE/edit

create_alias "bylaws-investigation"

preston track https://docs.google.com/document/d/1mDvCSI2FZUqAVB0QdWxIw8x4ycBvGRjxduQW7MKrj1A/edit

create_alias "draft-bylaws"

preston track https://docs.google.com/document/d/1B-eXZBVeDaXFnD6S7mFpPMK6yeYTfJIlSfhKjHlOpkI/edit

create_alias "belonging-policy"

preston track https://docs.google.com/document/d/18zYXP-kFf904wotx1j_tQ0eh-2MnBKnzCbpn8n12iuU/edit

create_alias "consensus-decision-making-policy"
