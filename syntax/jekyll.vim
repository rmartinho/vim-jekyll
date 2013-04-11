" Bring in YAML syntax for front matter
unlet b:current_syntax
syntax include @Yaml syntax/yaml.vim
syntax region yamlFrontmatter start=/\%^---$/ end=/^---$/ keepend contains=@Yaml

" Bring in C++11 syntax for code snippets
unlet b:current_syntax
syntax include @Cpp syntax/cpp11.vim
syntax region cppCodeSnippet matchgroup=Comment start=/^{% highlight cpp %}$/ end=/^{% endhighlight %}$/ keepend contains=@Cpp

" Re-enable Markdown syntax
let b:current_syntax='markdown'

" Limit text width
set textwidth=80
