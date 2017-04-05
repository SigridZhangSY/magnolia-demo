[#assign itemsNum = content.itemsNum?number]

[#--[#assign path = content.@handle]--]
[#--[#assign items = cmsfn.children(cmsfn.contentByPath(content.@handle + "/items"))]--]

<div class="footer">
    [#list 1..itemsNum as item]
        [@cms.area name="footerItem"/]
    [/#list]
</div>