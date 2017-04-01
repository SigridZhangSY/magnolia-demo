[#include "/one-pager-module/templates/macros/navigation.ftl"]

        [#assign navigationRootPage = navfn.rootPage(content)!]

<nav>
    [@navigation navParentItem=navigationRootPage logo=content.logo depth=1 expandAll=true /]
</nav>