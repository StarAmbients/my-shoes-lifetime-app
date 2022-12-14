/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.example.controller;

import com.example.bean.FileMediaBean;
import com.example.media.MediaGroup;
import com.example.media.MediaItem;
import com.example.media.MediaOrder;
import com.example.media.MediaQualifier;
import com.example.media.MediaType;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 *
 * @author Usr
 */
public class MediaController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");
        ServletContext context = getServletContext();
        String realPath = context.getRealPath("fxmedia");
        FileMediaBean fmm = new FileMediaBean(realPath);
        MediaQualifier mq;
        HttpSession session = request.getSession();
        if (session.isNew()) {
            mq = fmm.getQualifier();
            session.setAttribute("qualifierBean", mq);
        }
        mq = (MediaQualifier) session.getAttribute("qualifierBean");
        if (mq == null) {
            System.out.println("Got null");
            mq = fmm.getQualifier();
            session.setAttribute("qualifierBean", mq);
        }

        String action = request.getParameter("action");
        if (action == null) {
            action = "manager";
        }
        String address;
        switch (action) {
            case "manager":
                fmm.loadData();
                request.setAttribute("fileBean", fmm);
                address = "/WEB-INF/index.jsp";
                break;
            case "item":
                String itemId = request.getParameter("itemId");
                MediaItem item = fmm.getMediaItem(itemId);
                request.setAttribute("itemBean", item);
                address = "/WEB-INF/media.jsp";
                break;
            case "settings":
                address = "/WEB-INF/settings.jsp";
                break;
            case "newSettings":
                String type = request.getParameter("type");
                String sortOrder = request.getParameter("sortOrder");
                if (type != null) {
                    switch (type) {
                        case "images":
                            mq.setTypes(MediaType.IMAGE);
                            break;
                        case "videos":
                            mq.setTypes(MediaType.MP4_VIDEO, MediaType.OGV_VIDEO);
                            break;
                        default:
                            mq.setTypes(new MediaType[]{MediaType.IMAGE, MediaType.MP4_VIDEO, MediaType.OGV_VIDEO});
                            break;
                    }
                }
                if(sortOrder!=null){
                    mq.setSortOrder(MediaOrder.valueOf(sortOrder));                  
                }
                fmm.loadData(mq);
                request.setAttribute("fileBean", fmm);                
                address = "/WEB-INF/index.jsp";
                break;
            default:
                request.setAttribute("error", "Unknown action!");
                address = "/WEB-INF/error.jsp";
                break;
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher(address);
        dispatcher.forward(request, response);

//        fmm.loadData();
//        request.setAttribute("fileBean", fmm);
//        RequestDispatcher dispatcher=request.getRequestDispatcher("/WEB-INF/index.jsp");
//        RequestDispatcher dispatcher=request.getRequestDispatcher("/WEB-INF/prueba.jsp");
//        dispatcher.forward(request, response);
//        try ( PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet MediaController</title>");
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet MediaController at " + request.getContextPath() + "</h1>");
//            out.println(fmm.getPictureCount() + " pictures, " + fmm.getVideoCount() + " videos</p>");
//            for (MediaGroup group : fmm.getGroups()) {
//                for (MediaItem item : group.getItems()) {
//                    out.println(item.getTitle());
//                    out.println("<br>");
//                }
//            }
//            out.println("<p><a href='" + getServletContext().getContextPath() + "/upload.html'>Upload a new file</a></body></(tml>");
//            out.println("</body>");
//            out.println("</html>");
//        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
