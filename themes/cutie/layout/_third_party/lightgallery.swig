{{ js('js/lightgallery.min.js') }}
{{ js('js/lg-zoom.min.js') }}
<script type='text/javascript'>
    $(document).ready(function() {
        $("#lightgallery").lightGallery(); 
        $(".article-content img").each(function(){
            console.log($(this).attr('src'))
            $(this).attr('data-src', $(this).attr('src')).lightGallery({
                selector: 'this'
            })
        });
    });
</script>