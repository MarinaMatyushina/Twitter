<#include "security.ftlh">
<div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-3">
    <#list  messages as message>

        <div class="col">
            <div class="card h-100 my-3 ">

                <#if message.filename??>
                    <img class="rounded float-start" src="/img/${message.filename}" class="card-img-top">
                </#if>
                <div class="m-2">
                    <span>${message.text}</span><br/>
                    <i>${message.tag}</i>
                </div>
                <div class="card-footer text-muted ">
                    <a href = "/user-messages/${message.author.id}">${message.authorName}</a>
                    <#if message.author.id == currentUserId>
                        <a class="btn btn-primary" href="/user-messages/${message.author.id}?message=${message.id}">
                            Edit
                        </a>
                    </#if>
                </div>

            </div>
        </div>


    <#else> No messege
    </#list>
</div>