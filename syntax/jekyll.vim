" Build upon Markdown syntax
runtime! syntax/markdown.vim

" Bring in YAML syntax for front matter
unlet b:current_syntax
syntax include @Yaml syntax/yaml.vim
syntax region yamlFrontmatter start=/\%^---$/ end=/^---$/ keepend contains=@Yaml

" Bring in C++11 syntax for code snippets
unlet b:current_syntax
syntax include @Cpp syntax/cpp.vim
syntax region cppCodeSnippet matchgroup=Comment start=/^{% highlight cpp %}$/ end=/^{% endhighlight %}$/ keepend contains=@Cpp

let b:current_syntax='jekyll'

" Limit text width
set textwidth=80
