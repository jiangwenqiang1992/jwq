package com.jkxy;

import java.sql.DriverManager;
import java.sql.ResultSet;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

public class JdbcTest {
	public static void main(String[] args) {
		
		
		for(int i = 601 ; i<=800 ; i++) {
			String sql ="INSERT INTO `lmw_product_test130`.`plat_jifen_coupon` (`id`, `customer_id`, `coupon_name`, `coupon_code`, `coupon_type`, `coupon_status`, `create_time`, `update_time`) VALUES ('"+i+"', NULL, '格瓦拉电影票', '"+i+"', '1', '0', '2018-01-29 20:46:21', NULL);" ;
			System.out.println(jdbcResult(sql));

		}	
	}
	
	public static int  update_bus_borrow(String borrow_id,String date) {
		String sql ="UPDATE bus_borrow SET start_interest_time = date_add(start_interest_time,INTERVAL "+date+" DAY) WHERE 	borrow_id = '"+borrow_id+"'";
		
		return jdbcResult(sql);
	}
	public static int update_bus_repayment_detail(String borrow_id,String date) {
		String sql ="UPDATE bus_repayment_detail SET repay_date = date_add(repay_date, INTERVAL "+date+" DAY),real_repay_date=date_add(real_repay_date, INTERVAL "+date+" DAY) WHERE borrow_id = '"+borrow_id+"'";
		return jdbcResult(sql) ;
	}
	public static int update_plat_customer_invest(String borrow_id,String date) {
		String sql ="UPDATE plat_customer_invest SET cul_interest_start_time = date_add( cul_interest_start_time, INTERVAL "+date+" DAY ), last_repay_date = date_add( last_repay_date, INTERVAL "+date+" DAY ),cul_interest_end_time = date_add(cul_interest_end_time, INTERVAL "+date+" DAY) WHERE	borrow_id = '"+borrow_id+"'";
		return jdbcResult(sql) ;
	}
	public static int update_bus_borrow_debt(String borrow_id,String date) {
		String sql ="UPDATE bus_borrow_debt SET transfer_time = date_add(transfer_time,INTERVAL "+date+" DAY),transfer_end_date = date_add(transfer_end_date,INTERVAL "+date+" DAY) WHERE	borrow_id = '"+borrow_id+"'";
		return jdbcResult(sql) ;
	}
	public static int update_plat_xwbank_transaction_deal_extend(String borrow_id,String date) {
		String sql ="UPDATE plat_xwbank_transaction_deal_extend SET deal_time = DATE_ADD(deal_time,INTERVAL "+date+" DAY) WHERE borrow_id = '"+borrow_id+"'";
		return jdbcResult(sql) ;
	}
	
	
	public static int jdbcResult(String sql) {
		Connection conn = null ;
		Statement st = null ;
		ResultSet rs = null ;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = (Connection) DriverManager.getConnection("jdbc:mysql://192.168.2.110:3308/lmw_product_test130", "ceshi", "9ee0a32c45b48a8c95e12694a4b22e8c");
			st = (Statement) conn.createStatement();
			return st.executeUpdate(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				rs.close();
			} catch (Exception e2) {
				
			}
			try {
				st.close();
			} catch (Exception e2) {
			}
			try {
				conn.close();
			} catch (Exception e2) {
			}
			
		}
		return 0;
	}
}
