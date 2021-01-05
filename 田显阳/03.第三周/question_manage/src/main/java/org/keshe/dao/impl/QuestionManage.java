package org.keshe.dao.impl;

import org.keshe.dao.IQuestionManage;
import org.keshe.entity.Question;
import org.keshe.util.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class QuestionManage implements IQuestionManage {


    @Override
    // 用题号更新题目
    public boolean updateBySno(Question question) {
       String sql="UPDATE problem SET pro_no=? ,pro_detail=? ,option_A=? ,option_B=?,option_C=?,option_D=?,pro_type=?   WHERE pro_no=?";
        Object []params ={question.getPro_no(),question.getPro_detail(),question.getOption_A(),question.getOption_B(),question.getOption_C(),question.getOption_D(),question.getPro_type(),question.getPro_no()};
//                String sql="UPDATE problem SET pro_no=? ,pro_detail=?   WHERE pro_no=?";
//        Object []params ={question.getPro_no(),question.getPro_detail(),question.getPro_type()};
        return	DBUtil.executeUpdate(sql, params);
       // return	true;
    }


    //   根据题号删除题目
    public boolean deleteBySno(int pro_no) {
//        String sql="delete from problem  ";
//        Object []params ={};
        String sql="  DELETE FROM problem WHERE pro_no = ? ";
        Object []params ={pro_no};

        return	DBUtil.executeUpdate(sql, params);

    }

    @Override
    //   根据题号增加题目
    public boolean addQuestion(Question question) {
        String sql="INSERT INTO  problem VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";
        Object []params ={question.getPro_no(),question.getPro_detail(),question.getOption_A(),question.getOption_B(),question.getOption_C(),question.getOption_D(),question.getPro_ansno(),question.getPro_keyw(),question.getPro_dif(),question.getCha_no(),question.getCha_title(),question.getCha_mpiont(),question.getPro_type()};

        return	DBUtil.executeUpdate(sql, params);
    }

    @Override
    // 查询所有题目
    public List<Question> queryAllQuestions() {
        List<Question> questions =new ArrayList<>();
        Question question = null;
        PreparedStatement pstmt = null;
        ResultSet rs=null;
        try {
            String sql ="SELECT * FROM problem ";
            rs=DBUtil.executeQuery(sql, null);

            while (rs.next()) {
                int pro_no=rs.getInt("pro_no");
                String pro_detail	 = rs.getString("pro_detail");
                String option_A = rs.getString("option_A");
                String option_B = rs.getString("option_B");
                String option_C = rs.getString("option_C");
                String option_D = rs.getString("option_D");
                int pro_ansno = rs.getInt("pro_ansno");
                String pro_keyw = rs.getString("pro_keyw");
                String pro_dif = rs.getString("pro_dif");
                String cha_no = rs.getString("cha_no");
                String cha_title = rs.getString("cha_title");
                String cha_mpiont = rs.getString("cha_mpiont");
                String pro_type= rs.getString("pro_type");

                question=new Question(pro_no,pro_detail,option_A,option_B,option_C,option_D,pro_ansno,pro_keyw,pro_dif,cha_no,cha_title,cha_mpiont,pro_type);
                questions.add(question);

            }

            return questions;

        } catch (SQLException e) {

            e.printStackTrace();
            return null;

        } catch (Exception e) {

            e.printStackTrace();
            return null;
        } finally {
            DBUtil.closeAll(rs, pstmt, DBUtil.conn);

        }
    }



    //   根据条件查询题目
    public List<Question> queryBySno(String title,String option,int currentPage, int pageSize) {
        Question question = null;
        List<Question> questions =new ArrayList<>();
        PreparedStatement pstmt = null;
        Connection conn = null;
        ResultSet rs = null;
        String sql=null;

        //String sql = "select *from problem limit ?,?";
        //select * from student limit 页数*页面大小,页面大小
       // Object[] params = {currentPage*pageSize,pageSize};
        try {

            if(title.equals("0"))
            {
                //sql = "SELECT * FROM problem WHERE pro_dif=?";
                sql = "SELECT * FROM problem WHERE pro_dif=? limit ?,?";
            }
            else if(title.equals("1"))
            {
                 sql = "SELECT * FROM problem WHERE cha_no=? limit ?,?";
            }
            else
            {
                 sql = "SELECT * FROM problem WHERE cha_mpiont=? limit ?,?";
            }

            Object [] params={option,currentPage*pageSize,pageSize};
            rs=DBUtil.executeQuery(sql, params);


            while (rs.next()) {
                int pro_no=rs.getInt("pro_no");
                String pro_detail	 = rs.getString("pro_detail");
                String option_A = rs.getString("option_A");
                String option_B = rs.getString("option_B");
                String option_C = rs.getString("option_C");
                String option_D = rs.getString("option_D");
                int pro_ansno = rs.getInt("pro_ansno");
                String pro_keyw = rs.getString("pro_keyw");
                String pro_dif = rs.getString("pro_dif");
                String cha_no = rs.getString("cha_no");
                String cha_title = rs.getString("cha_title");
                String cha_mpiont = rs.getString("cha_mpiont");
                String pro_type= rs.getString("pro_type");

                question=new Question(pro_no,pro_detail,option_A,option_B,option_C,option_D,pro_ansno,pro_keyw,pro_dif,cha_no,cha_title,cha_mpiont,pro_type);
                questions.add(question);

            }

            return questions;

        } catch (SQLException e) {

            e.printStackTrace();
            return null;

        } catch (Exception e) {

            e.printStackTrace();
            return null;
        } finally {
            try {
                if (rs != null)
                    rs.close();
                if (pstmt != null)
                    pstmt.close();
                if (conn != null)
                    conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }

        }
    }

   //按照答案号查找答案
    public String queryByano(int title) {

        PreparedStatement pstmt = null;
        Connection conn = null;
        ResultSet rs = null;
        String pro_ansdetil=null;
        String sql=null;
        try {

            sql = "SELECT ans_detail FROM answer WHERE ans_no=?";
            Object [] params={title};
            rs=DBUtil.executeQuery(sql, params);


            if (rs.next()) {
                 pro_ansdetil= rs.getString("ans_detail");
            }

            return pro_ansdetil;

        } catch (SQLException e) {

            e.printStackTrace();
            return null;

        } catch (Exception e) {

            e.printStackTrace();
            return null;
        } finally {
            try {
                if (rs != null)
                    rs.close();
                if (pstmt != null)
                    pstmt.close();
                if (conn != null)
                    conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }

        }
    }

    //currentPage:当前页（页码）   pageSize：页面大小（每页显示的数据条数）
    public List<Question> queryQuestionsByPage(int currentPage, int pageSize) {
        String sql = "select *from problem limit ?,?";
        //select * from student limit 页数*页面大小,页面大小
        Object[] params = {currentPage*pageSize,pageSize};

        List<Question> questions= new ArrayList<>();

        ResultSet rs = DBUtil.executeQuery(sql, params) ;

        try {
            while(rs.next()) {

                Question question = null;
                int pro_no=rs.getInt("pro_no");
                String pro_detail	 = rs.getString("pro_detail");
                String option_A = rs.getString("option_A");
                String option_B = rs.getString("option_B");
                String option_C = rs.getString("option_C");
                String option_D = rs.getString("option_D");
                int pro_ansno = rs.getInt("pro_ansno");
                String pro_keyw = rs.getString("pro_keyw");
                String pro_dif = rs.getString("pro_dif");
                String cha_no = rs.getString("cha_no");
                String cha_title = rs.getString("cha_title");
                String cha_mpiont = rs.getString("cha_mpiont");
                String pro_type= rs.getString("pro_type");

                question=new Question(pro_no,pro_detail,option_A,option_B,option_C,option_D,pro_ansno,pro_keyw,pro_dif,cha_no,cha_title,cha_mpiont,pro_type);
                questions.add(question);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }catch (Exception e) {
            e.printStackTrace();
        }
        return questions;
    }

    //查询总数据数
    public int getTotalCount() {
        String sql = "select count(1) from problem" ;
        return DBUtil.getTotalCount(sql);
    }
}
