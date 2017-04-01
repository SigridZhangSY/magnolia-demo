[#macro imgLink node]
    [#assign link = node.target]
    [#assign pic = node.image]
    [#assign rendition = damfn.getRendition(pic, "xxlarge")!]
    [#assign targetNode = cmsfn.contentByPath(link)]

    <div class="img-link">
        <a href="${cmsfn.link(targetNode)}">
            <img src="${rendition.link}">
        </a>
    </div>
[/#macro]