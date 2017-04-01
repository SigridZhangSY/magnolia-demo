[#-------------- ASSIGNMENTS --------------]
[#include "/one-pager-module/templates/macros/image.ftl" /]

[#assign products = content.products]


<!-- Tour Carousel -->
<div id="myCarousel" class="carousel slide" data-ride="carousel">

    <!-- Indicators -->
    <ol class="carousel-indicators">
    [#list products as product]
        [#assign activeClass=""]
        [#if product_index == 0 ]
            [#assign activeClass="active"]
        [/#if]
        <li data-target="#myCarousel" data-slide-to="${product_index}" class="${activeClass}"></li>
    [/#list]
    </ol>

    <!-- Actual Carousel List -->
    <div class="carousel-inner" role="listbox">
    [#list products as product]
        [#assign activeClass=""]
        [#if product_index == 0 ]
            [#assign activeClass="active"]
        [/#if]


        [#assign rendition = damfn.getRendition(product, "xxlarge")!]
        <div class="item ${activeClass}">
            <div class="container">
                <a class="carousel-link" ">
                    <div class="carousel-caption">
                        <img src="${rendition.link}">

                        [#--<h1>${product.name!}</h1>--]
                        [#--[#if showTourTypes]--]
                            [#--<div class="category-icons">--]
                                [#--[#list tour.tourTypes as tourType]--]
                                    [#--<div class="category-icon absolute-center-container">--]
                                        [#--[@tourTypeIcon tourType.icon tourType.name "" /]--]
                                    [#--</div>--]
                                [#--[/#list]--]
                            [#--</div>--]
                        [#--[/#if]--]
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
