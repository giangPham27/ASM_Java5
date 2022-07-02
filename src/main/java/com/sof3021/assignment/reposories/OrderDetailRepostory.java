package com.sof3021.assignment.reposories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.sof3021.assignment.beans.HistoryModel;
import com.sof3021.assignment.entities.OrderDetails;
import com.sof3021.assignment.entities.Orders;

@Repository
public interface OrderDetailRepostory extends JpaRepository<OrderDetails, Integer>{
	
	@Query("SELECT od FROM OrderDetails od WHERE od.orders = :id")
	public List<OrderDetails> findByOrder_id(@Param("id") Orders id);
//	
//	@Query("Select o From OrderDetails o Where o.active = :active")
//	public List<OrderDetails> findByActive(@Param("active") Integer active);

	@Query(value = "SELECT new HistoryModel(p, od, o ) FROM OrderDetails od "
			+ "INNER JOIN od.orders o INNER JOIN od.products p WHERE od.orders.id =:id")
	public List<HistoryModel> getBill(@Param("id") int id);
}
