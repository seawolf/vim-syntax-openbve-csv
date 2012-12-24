" Vim syntax file
" Language:            OpenBVE CSV
" Maintainer:          Ben Arnold <ben@seawolfsanctuary.com>
" Last Change:         Christmas Eve 2012
" URL:                 http://code.seawolfsanctuary.com/vim-syntax-openbve-csv
" Anon Git:            git@bitbucket.org:sea_wolf/vim-syntax-openbve-csv.git
" Release Coordinator: Ben Arnold <ben@seawolfsanctuary.com>
" ----------------------------------------------------------------------------

if exists("b:current_syntax")
  finish
endif

syntax case ignore

syntax keyword cmdKeywords With

syntax keyword cmdGroups Route Options Train Structure Texture Track

syntax match trackPosition /[0-9.]*/
syntax keyword cmdsRoute Comment Guage DeveloperID Change RunInterval Signal contained nextgroup=cmdArgs
syntax keyword cmdsOptions UnitOfSpeed contained nextgroup=cmdArgs
syntax keyword cmdsTrain Folder contained nextgroup=cmdArgs
syntax keyword cmdsStructure Ground Rail Beacon FreeObj contained nextgroup=cmdArgs
syntax keyword cmdsTexture Background contained nextgroup=cmdArgs
syntax keyword cmdsTrack Ground Back Brightness Rail Railtype FreeObj Stop Signal SigF Limit Section Curve contained nextgroup=cmdArgs

syntax region cmdRange start=/[\.A-Za-z]/ end=/[, ]/ nextgroup=cmdArgs
syntax region preprocRange start="\$" end=/[,\n]/

syntax match cmdDelimiter /,/

syntax region commentRange start=";" end=/[,\n]/

syntax region cmdArgs start=/[ 0-9A-Za-z]*/ end=/[,\n]/ contained

highlight link cmdKeywords Statement
highlight link trackPosition Label

highlight link cmdArgs Todo
highlight link cmdRange Function
highlight link preprocRange Label

highlight link cmdGroups Tag
highlight link cmdsRoute Tag
highlight link cmdsOptions Tag
highlight link cmdsTrain Tag
highlight link cmdsStructure Tag
highlight link cmdsTexture Tag
highlight link cmdsTrack Tag

highlight link commentRange Comment
highlight link cmdDelimiter Delimiter
