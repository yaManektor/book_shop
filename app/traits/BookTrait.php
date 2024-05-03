<?php

trait BookTrait
{
    private function getBookCategories(): array
    {
        return $this->model('Category')->getCategories();
    }

    private function getBookAuthors(): array
    {
        return $this->model('Author')->getAuthors();
    }

    private function sortBooksByTitle(array $books): array
    {
        if (!empty($_GET['sort']))
            usort($books, function ($a, $b) {
                return $_GET['sort'] == 'asc' ? strcmp($a->title, $b->title) : -strcmp($a->title, $b->title);
            });

        return $books;
    }

    private function validateData(string $str): string
    {
        $jsxss="onabort,oncanplay,oncanplaythrough,ondurationchange,onemptied,onended,onerror,onloadeddata,onloadedmetadata,onloadstart,onpause,onplay,onplaying,onprogress,onratechange,onseeked,onseeking,onstalled,onsuspend,ontimeupdate,onvolumechange,onwaiting,oncopy,oncut,onpaste,ondrag,ondragend,ondragenter,ondragleave,ondragover,ondragstart,ondrop,onblur,onfocus,onfocusin,onfocusout,onchange,oninput,oninvalid,onreset,onsearch,onselect,onsubmit,onabort,onbeforeunload,onerror,onhashchange,onload,onpageshow,onpagehide,onresize,onscroll,onunload,onkeydown,onkeypress,onkeyup,altKey,ctrlKey,shiftKey,metaKey,key,keyCode,which,charCode,location,onclick,ondblclick,oncontextmenu,onmouseover,onmouseenter,onmouseout,onmouseleave,onmouseup,onmousemove,onwheel,altKey,ctrlKey,shiftKey,metaKey,button,buttons,which,clientX,clientY,detail,relatedTarget,screenX,screenY,deltaX,deltaY,deltaZ,deltaMode,animationstart,animationend,animationiteration,animationName,elapsedTime,propertyName,elapsedTime,transitionend,onerror,onmessage,onopen,ononline,onoffline,onstorage,onshow,ontoggle,onpopstate,ontouchstart,ontouchmove,ontouchend,ontouchcancel,persisted,javascript";
        $jsxss = explode(",", $jsxss);

        $str = preg_replace("'<script[^>]*?>.*?</script>'si", '', $str);
        $str = str_replace($jsxss,'', $str);
        $str = str_replace('\\', '', $str);
        return trim(htmlspecialchars($str));
    }
}
