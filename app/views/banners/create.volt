<form method="post" autocomplete="off" enctype= "multipart/form-data" class='form-post' accept-charset="UTF-8" role="form" action="">

    <ul class="pager">
        <li class="previous pull-left">
            {{ link_to("banners", "&larr; Go Back") }}
        </li>
        <li class="pull-right">
            {{ submit_button("Save", "class": "btn btn-success") }}
        </li>
    </ul>

    {{ content() }}

    <div class="center scaffold">
        <h2>Create a Banner</h2>

        <div class="clearfix">
            <label for="title">Title</label>
            {{ form.render("title") }}
        </div>

        <div class="clearfix">
            <label for="isActive">Is Active? </label>
            {{ form.render("isActive") }}
        </div>

        <div class="clearfix">
            <label for="files[]">Photo: </label>
            <input type="file" name="files[]" multiple>
        </div>
        <span>Image size: 760 X 340 px</span>
    </div>

</form>




