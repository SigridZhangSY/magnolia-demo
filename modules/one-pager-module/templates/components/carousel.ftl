[#-------------- ASSIGNMENTS --------------]
[#include "/one-pager-module/templates/macros/image.ftl" /]

[#assign path = content.@handle]
[#assign items = cmsfn.children(cmsfn.contentByPath(content.@handle + "/items"))]

<div id="myCarousel" class="carousel slide" data-ride="carousel">

    <!-- Actual Carousel List -->
    <div class="carousel-inner" role="listbox">
    [#list items as item]
        [#assign activeClass=""]
        [#if item_index == 0 ]
            [#assign activeClass="active"]
        [/#if]

        [#assign link = item.target]
        [#assign pic = item.image]
        [#assign rendition = damfn.getRendition(pic, "xxlarge")!]
        [#assign targetNode = cmsfn.contentByPath(link)]
        <div class="item ${activeClass}">
            <div class="container">
                <a class="carousel-link" href="${cmsfn.link(targetNode)}">
                    <div class="carousel-caption">
                        <img src="${rendition.link}">
                    </div>
                </a>
            </div>
        </div>
    [/#list]
    </div>

    <!-- Carousel Controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
        <span class="carousel-icon carousel-icon-prev" aria-hidden="true"></span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
        <span class="carousel-icon carousel-icon-next" aria-hidden="true"></span>
    </a>
</div>
