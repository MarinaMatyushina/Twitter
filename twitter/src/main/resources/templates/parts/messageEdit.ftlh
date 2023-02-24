<#if message??><a class="btn btn-primary mt-1" data-bs-toggle="collapse" href="#collapseExample" role="button"
   aria-expanded="false" aria-controls="collapseExample">
    Message edit
</a></#if>
<div class="collapse <#if message??>show</#if> mt-1" id="collapseExample">
    <form method="post" enctype="multipart/form-data">
        <div class="input-group mb-3">
            <input type="text" name="text" placeholder="Enter your message"
                   class="form-control ${(textError??)?string('is-invalid', '')}"
                   value="<#if message??>${message.text}</#if>"/>

            <#if textError??>
                <div class="invalid-feedback">
                    ${textError}
                </div>
            </#if>
        </div>
        <div class="input-group mb-3">
            <input type="text" name="tag" placeholder="Tag" class="form-control"
                   value="<#if message??>${message.tag}</#if>"/>
            <#if tagError??>
                <div class="invalid-feedback">
                    ${tagError}
                </div>
            </#if>
        </div>
        <div class="input-group mb-3">
            <input type="file" name="file" class="form-control" id="inputGroupFile">
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <input type="hidden" name="id" value="<#if message??>${message.id}</#if>"/>
        <div class="input-group mb-3">
            <button type="submit" class="btn btn-primary">Save</button>
        </div>
    </form>
</div>
