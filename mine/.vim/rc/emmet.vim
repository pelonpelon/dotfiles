let g:user_emmet_leader_key = '<c-e>'
let g:user_emmet_expandabbr_key = '<f9>'
let g:use_emmet_complete_tag = 1

let g:user_emmet_settings = {
\   'indentation' : '  ',
\   'html' : {
\     'extends': "html",
\     'aliases': {
\       'req': "require"
\     },
\     'snippets' : {
\       'scr': "<script>\n\t|\n</script>",
\       'ph' : "<?php | ?>", 
\       'ht' : "?>\t\t|\t\t<?php", 
\       'php' : "<?php\n\t|\n?>", 
\       'htm' : "?>\n\t|\n<?php", 
\       'pif' : "if ( | ) {\n\t\n}",
\       'pel' : "else {\n\t|\n}",
\       'par' : "array( '|' => '' )",
\       'pfe' : "foreach ( \\$| as \\$ ) {\n\t\n}",
\       'pcb' : "/*\n * |\n *\n */",
\       'hc' : "<!-- | -->",
\       'hf' : "<!-- FIXX -->",
\       'pf' : "//FIXX",
\       'pex' : "throw new Exception(\"|\");",
\       'pcl' : "?><script>console.log('<?php echo \"|\"; ?>')</script><?php",
\     }
\   },
\   'css' : {
\     'extends': "css",
\     'aliases': {
\     },
\     'snippets': {
\       'mqmax' :  "@media only screen and (max-device-width: |){\n\t|\n}",
\       'mqmin' :  "@media only screen and (min-device-width: |){\n\t|\n}",
\     }
\   }
\}



