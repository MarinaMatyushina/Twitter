<a class="btn btn-primary mt-1" data-bs-toggle="collapse" href="#collapseExample" role="button"
   aria-expanded="false" aria-controls="collapseExample">
    Add message
</a>
<div class="collapse mt-1" id="collapseExample">
    <form method="post" enctype="multipart/form-data">
        <div class="input-group mb-3">
            <input type="text" name="text" placeholder="Enter your message"
                   class="form-control ${(textError??)?string('is-invalid', '')}"/>

            <#if textError??>
                <div class="invalid-feedback">
                    ${textError}
                </div>
            </#if>
        </div>
        <div class="input-group mb-3">
            <input type="text" name="tag" placeholder="Tag" class="form-control"/>
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
        <div class="input-group mb-3">
            <button type="submit" class="btn btn-primary">Save</button>
        </div>
    </form>
</div>