[{1 :nvim-treesitter/nvim-treesitter
  :build ":TSUpdate"
  :config (fn []
            (let [treesitter (require :nvim-treesitter.config)]
              (treesitter.setup {:highlight {:enable false}
                                 :indent {:enable true}
                                 :ensure_installed [:bash
                                                    :clojure
                                                    :commonlisp
                                                    :dockerfile
                                                    :fennel
                                                    :html
                                                    :java
                                                    :javascript
                                                    :json
                                                    :latex
                                                    :lua
                                                    :markdown
                                                    :markdown_inline
                                                    :python
                                                    :typst
                                                    :yaml
                                                    :vimdoc]})))}]
