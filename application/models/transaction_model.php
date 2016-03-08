<?php
class transaction_model extends CI_Model{
    //__construct
    //Constructor for payment
    public function __construct() {
        //$this->load->database();
    }
    
    public function insert_transaction($order_id=null,$amount,$date=null,$type,$narration,$payment_against,$mode,$supplier_id=null,$staff_id=null){
            if($order_id==null)
                $order_id=0;
            if($date==null)
                $date=date('Y-m-d');
            // if($supplier_id)

            $data = array(
                'order_id' =>$order_id,
                'amount' =>$amount,
                'transaction_date' =>date('Y-m-d H:i:s'),
                'transaction_type' =>$type,
               
               
                'narration' =>$narration
                
                
            );
            $this->db->insert('transaction',$data);
            return $this->db->insert_id();
    }

    public function get_all($type){
                    $query=$this->db->query("SELECT
                `transaction`.id,
                order_id,
                amount,
                transaction_date,
                transaction_type,
                narration,
            
            
            suppliers.name as supp_name,
            staff.fname as staff_name
            FROM
                `transaction`
            left JOIN staff on staff.id=`transaction`.staff_id
            left JOIN suppliers on suppliers.id=`transaction`.supplier_id
            WHERE
                transaction_type ='".$type."'");
        return $query->result_array();
    }

    public function update_data($res){
      
        if(!$res['narration'])
            $narration=" ";
     
        $data = array('amount' =>$res['amount'],'narration'=>$res['narration']);
      
        $condition = array(
            'id' => $res['id'],
             );
        $this->db->where($condition);
        $this->db->update('transaction', $data); 

            return TRUE;
        // if ($this->db->affected_rows())
        // return FALSE;

    }

    public function get_by_id($id){
        $query=$this->db->query("SELECT transaction_type,amount,narration FROM `transaction` where id='".$id."'");
        return $query->result_array();
    }
    
    public function delete_by_id($id){
        $query=$this->db->query("DELETE  FROM `transaction` where id='".$id."'");
        if ($this->db->affected_rows()>0)
            return true;
        else
            return false;
    }
    
    public function get_received_payment($start_date,$end_date){
        $query=$this->db->query("SELECT `transaction`.*, staff.fname,suppliers.`name`   
                                FROM
                                `transaction`
                                left JOIN staff on staff.id=`transaction`.staff_id
                                LEFT JOIN suppliers on suppliers.id=`transaction`.supplier_id
                                WHERE transaction_date between '".$start_date."' AND  '". $end_date."' ");
                                return $query->result_array();
    }
    public function get_paid_payment($start_date,$end_date){
        $query=$this->db->query("SELECT `transaction`.amount as paid_amount, `transaction`.narration as paid_narration, `transaction`.order_id, staff.fname, suppliers.`name`
                                 FROM
                                 `transaction`
                                 left JOIN staff on staff.id=`transaction`.staff_id
                                 LEFT JOIN suppliers on suppliers.id=`transaction`.supplier_id
                                WHERE transaction_date between '".$start_date."' AND '". $end_date."' AND "." transaction_type='Paid'");
        return $query->result_array();
    }

    public function get_paid_salary($start_date,$end_date){
        $query=$this->db->query("SELECT `transaction`.*, staff.fname,suppliers.`name`   
                                FROM
                                `transaction`
                                left JOIN staff on staff.id=`transaction`.staff_id
                                LEFT JOIN suppliers on suppliers.id=`transaction`.supplier_id
                                WHERE
                                transaction_date between '".$start_date."' AND '". $end_date."' AND "." transaction_type='Paid' AND staff_id != null or staff_id !=0");
        return $query->result_array();
    }

    public function get_supplier_payment($start_date,$end_date){
        $query=$this->db->query("SELECT `transaction`.*, staff.fname,suppliers.`name`   
                                FROM
                                `transaction`
                                left JOIN staff on staff.id=`transaction`.staff_id
                                LEFT JOIN suppliers on suppliers.id=`transaction`.supplier_id
                                WHERE transaction_date between '".$start_date."' AND '". $end_date."' AND "." transaction_type='Paid' AND supplier_id != null or supplier_id !=0");
        return $query->result_array();
    }
    
    public function total_paid_salary($start_date,$end_date){

            $query=$this->db->query("SELECT SUM(amount) as amount from `transaction` 
                                    WHERE transaction_type='Paid' 
                                    and transaction_date BETWEEN '".$start_date."' AND '".$end_date."' AND staff_id!=null or staff_id!=0 ");
            // echo $this->db->last_query();
            return $query->result_array();
    }
   
    public function total_paid_to_supplier($start_date,$end_date){

            $query=$this->db->query("SELECT SUM(amount) amount from `transaction` 
                                    WHERE transaction_type='Paid' 
                                    and transaction_date BETWEEN '".$start_date."' AND '".$end_date."'"."AND supplier_id!=null or supplier_id!=0 ");
            return $query->result_array();
    }

     public function total_paid($start_date,$end_date){

            $query=$this->db->query("SELECT SUM(amount) as amount from `transaction` 
                                    WHERE transaction_type='Paid' 
                                    and transaction_date BETWEEN '".$start_date."' AND '".$end_date."'  ");
         
            return $query->result_array();
    }

    public function total_received_payment($start_date,$end_date){

            $query=$this->db->query("SELECT SUM(amount) as amount from `transaction` 
                                    WHERE transaction_type='Received' 
                                    and transaction_date BETWEEN '".$start_date."' AND '".$end_date."' or order_id!=0 or order_id!=null");
            // echo $this->db->last_query();
            return $query->result_array();
    }
}
?>
