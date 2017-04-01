[#-- Basic navigation macro which generates simple navigation. You can adjust it to fulfil your needs. --]
[#macro navigation navParentItem logo depth=1 expandAll=false navClass="nav"]
    [#if logo?has_content]

        [#assign rendition = damfn.getRendition(logo, "")!]
    <div class="nav-logoitem">
        <a href="${navfn.link(navParentItem)!"#"}">
            <img src="${rendition.link}">
        </a>
    </div>
    [/#if]


    [#if navParentItem?has_content && depth > 0]
    <div class="collapse navbar-collapse">
        <ul class="${navClass} navbar-nav mr-auto">
            [#if navfn.isActive(content, navParentItem)]
            <li class="active nav-item">
            [#else]
            <li class="nav-item">
            [/#if]
                <a href="${navfn.link(navParentItem)!"#"}">
                    <span>${navParentItem.navigationTitle!navParentItem.title!navParentItem.@name}</span>
                </a>
            </li>

            [#assign navItems = navfn.navItems(navParentItem)]
            [#list navItems as navItem]
            [#-- This is an example of how to resolve navigation from items in content apps. Uncomment and adjust to your
            needs.
            [#if navfn.hasTemplate(navItem, "mtk:pages/contactsOverview") || navfn.hasTemplateSubtype(navItem,
            "contactsOverview")]
            <li class="nav-item">
                [#if navfn.isHiddenInNav(navItem)]
                <a href="#">${navItem.navigationTitle!navItem.title!navItem.@name}</a>
                [#else]
                <a href="${cmsfn.link(navItem)!"#"}">
                <span>${navItem.navigationTitle!navItem.title!navItem.@name}</span>
                </a>
            [/#if]
                <ul>
                [#assign navContentItems = navfn.navItemsFromApp("contacts", "/", "mgnl:contact")]
                [#list navContentItems as navContentItem]
                <li><a href="${navfn.linkWithSelector(navItem, navContentItem)!"#"}">${navContentItem.lastName!navContentItem.@name}
                    </a>
                </li>
            [/#list]
            </ul>
            </li>
            [#else]
            --]
            [#-- Active navigation item is the one which is same as current page--]
                [#assign activeNavItem = navfn.isActive(content, navItem)]

            [#-- Open navigation item is the one which is ancestor of current page--]
                [#assign openNavItem = navfn.isOpen(content, navItem)]
                [#if activeNavItem]
                <li class="active nav-item">
                [#elseif openNavItem]
                <li class="open nav-item">
                [#else]
                <li class="nav-item">
                [/#if]
                <a href="${navfn.link(navItem)!"#"}">
                    <span>${navItem.navigationTitle!navItem.title!navItem.@name}</span>
                </a>
                [#--[#if expandAll || activeNavItem || openNavItem]--]
                    [#--[@navigation navItem depth-1 /]--]
                [#--[/#if]--]
            </li>
            [#-- End 'if' for navigation from the content apps]
                    [/#if]
            --]
            [/#list]
        </ul>
    [/#if]
[/#macro]
</div>