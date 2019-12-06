<div style="width: 100%;">
    <iframe id="external-frame" src="{theUrl}"
            style="width: 100%;min-height: 200vh; overflow:hidden; border: 0;"
        ></iframe>
</div>
<script type="text/javascript">
    function handleDocHeightMsg (event) {
        var iframe = document.getElementById("external-frame");

        if ((event.origin.indexOf('hypeeyes.com') > 0 && location.origin.indexOf('hypeeyes.com') > 0 && typeof event.data === 'number') ||
            (event.origin === 'http://127.0.0.1:4200' && location.origin ==='http://127.0.0.1:4567') ||
            (event.origin === 'http://localhost:4200' && location.origin === 'http://localhost:4567')) {
            iframe.style.height = event.data +"px";
        }
    }
    window.addEventListener('message', handleDocHeightMsg, false);
</script>
<style>
.container {
    width: 100%;
}
body #content {
    padding: 0;
}
body {
    overflow-x: hidden;
    height: calc(100vh - 65px);
    background: #edf1f4;
}
</style>
