[#include "/one-pager-module/templates/macros/navigation.ftl"]

        [#assign navigationRootPage = navfn.rootPage(content)!]

<nav>
    <h1>${navigationRootPage}</h1>
    [@navigation navParentItem=navigationRootPage depth=1 expandAll=true /]
</nav>