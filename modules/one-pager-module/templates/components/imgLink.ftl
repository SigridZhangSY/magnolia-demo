[#assign link = content.target]
[#assign pic = content.image]
[#assign rendition = damfn.getRendition(pic, "xxlarge")!]

[#assign node = cmsfn.contentByPath(link)]

<div class="img-link">
    <a href="${cmsfn.link(node)}">
        <img src="${rendition.link}">
    </a>
</div>