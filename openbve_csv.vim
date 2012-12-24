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

syntax keyword cmdsRoute Comment Guage DeveloperID Change RunInterval Signal
syntax keyword cmdsOptions UnitOfSpeed
syntax keyword cmdsTrain Folder
syntax keyword cmdsStructure Ground Rail Beacon FreeObj
syntax keyword cmdsTexture Background
syntax keyword cmdsTrack Ground Back Brightness Rail Railtype FreeObj Stop Signal SigF Limit Section Curve

syntax match cmdDelimiter /,/

highlight link cmdKeywords Function

highlight link cmdGroups Tag
highlight link cmdsRoute Tag
highlight link cmdsOptions Tag
highlight link cmdsTrain Tag
highlight link cmdsStructure Tag
highlight link cmdsTexture Tag
highlight link cmdsTrack Tag

highlight link cmdDelimiter Delimiter
