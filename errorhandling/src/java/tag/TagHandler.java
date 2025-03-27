package tag;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class TagHandler extends TagSupport
{

    @Override
     public int doStartTag() throws JspException
    {
        try{
            JspWriter out = pageContext.getOut();
            out.println("<h1>This is my custom tag</h1>");
            
        }catch(Exception e)
        {
            System.out.println(e);
        }
        return SKIP_BODY;
    }
}
