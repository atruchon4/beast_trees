plan <- drake_plan(
  study.trees = studies_find_trees(property="ot:ottTaxonName", value="Pelagophyceae", detailed=FALSE),
  studies.ids = unlist(study.trees$study_ids),
  dinoflag.metadata = rotl::get_study_meta(studies.ids[9]),
  print(rotl::get_publication(dinoflag.metadata)),
  dinoflag.tree1 = get_study_tree("ot_87", "Tr64119"),
  ape::plot.phylo(dinoflag.tree1, cex = .8),
  writeNexus(dinoflag.tree1, file="dinoflag_test.nex")
)