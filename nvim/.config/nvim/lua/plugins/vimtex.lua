return {
  'lervag/vimtex',
  config = function()
    vim.cmd(
    [[
      let g:tex_flavor = "latex"

      let g:vimtex_compiler_latexmk = {
            \ 'executable' : 'latexmk',
            \ 'options' : [
            \   '-lualatex',
            \   '-file-line-error',
            \   '-synctex=1',
            \   '-interaction=nonstopmode',
            \ ],
            \}

      let g:vimtex_view_method='general'
      let g:vimtex_view_general_viewer='/home/maruda/welesikowy_config/zathura/.config/zathura/zath.sh'


      let g:Tex_MultipleCompileFormates='pds,bibtex,pdf'
      let g:tex_fold_enabled = 0
      let g:vimtex_fold_enabled = 1
      let g:vimtex_fold_types = {
              \ 'preamble' : {'enabled':1},
              \ 'comments' : {'enabled' : 1},
              \ 'envs' : {
              \   'blacklist' : [],
              \   'whitelist' : [],
              \ },
              \ 'env_options' : {},
              \ 'markers' : {},
              \ 'sections' : {
              \   'parse_levels' : 1,
              \   'sections' : [
              \     'part',
              \     'chapter',
              \     'section',
              \     'subsection',
              \     'subsubsection',
              \   ],
              \   'parts' : [
              \     'appendix',
              \     'frontmatter',
              \     'mainmatter',
              \     'backmatter',
              \   ],
              \ }
              \}
      let g:vimtex_fold_manual = 1

      " set conceallevel=1
      let g:tex_conceal='abdmg'

    ]]
    )
  end

}
