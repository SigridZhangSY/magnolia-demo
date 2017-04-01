[#include "/one-pager-module/templates/macros/imgLink.ftl" /]

[#assign path = content.@handle]
[#assign items = cmsfn.children(cmsfn.contentByPath(content.@handle + "/items"))]


[#assign cols = items?size]
[#assign width = 12/cols]

<div class="container-fluid">

    <div class="row img-link-line">
    [#list items as item]
        <div class="${"item-wrapper col-xs-" + width}">
            [@imgLink node=item/]
        </div>
    [/#list]
    </div>
</div>