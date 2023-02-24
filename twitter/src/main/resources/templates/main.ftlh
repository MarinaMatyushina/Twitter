<#import "parts/common.ftlh" as c>
<@c.page>

        <div class="form-group col-md-6">
            <form method="get" action="/main">
                <div class="row gx-2">
                    <div class="col">
                        <input type="input-group-text" name="filter" class="form-control"
                               value="${filter?ifExists}" placeholder="Search by tag">
                    </div>
                    <div class="col">
                        <button type="submit" class="btn btn-primary ml-5">Search</button>
                    </div>
                </div>
            </form>
        </div>

    <#include "parts/messageAdd.ftlh"/>
    <#include "parts/messageList.ftlh"/>

</@c.page>