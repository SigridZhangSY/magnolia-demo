[#assign itemNum = components?size]

[#if itemNum != 0]
    [#assign width = 12/itemNum]
[/#if]


<div class="footer-wrapper">
    <div class="container-fluid">

        <div class="row footer">
        [#list components as component]
            <div class="${"footer-item-wrapper col-xs-" + width}">
                [@cms.component content=component /]
            </div>
        [/#list]
        </div>
    </div>
</div>

[#--[#list components as component]--]
    [#--[@cms.component content=component /]--]
[#--[/#list]--]
