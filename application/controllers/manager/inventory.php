<?php if (! defined('BASEPATH')) exit('No direct script access allowed');
/**
* @author David Adamo Jr.
*/
class Inventory extends CI_Controller {
	public $data;

	public function __construct()
	{
		parent::__construct();
		$this->data['dependencies'] = $this->load->view('manager/dependencies', '', TRUE);
		$this->data['header'] = $this->load->view('manager/header', '', TRUE);
		$this->load->model('ingredient_model', 'ingredients');
		$this->load->model('configruation_model','configruation_model');
		$this->data['sidemenu']=$this->configruation_model->sidebar_menus('Manager');
		$this->data['active'] = 17;
		$this->data['sidebar'] = $this->load->view('manager/sidebar', '', TRUE);

		$this->load->model('stock_model', 'allstock');
	}

	public function index()
	{
		$this->data['res_today_stock'] = $this->allstock->get_res_today_stock();
		$this->data['res_all_stock'] = $this->allstock->get_res_all_stock();
		
		$this->data['bar_today_stock'] = $this->allstock->get_bar_today_stock();
		$this->data['bar_all_stock'] = $this->allstock->get_bar_all_stock();

		$this->load->view('manager/inventory', $this->data);
	}

	public function add($id='')
	{

		$this->data['ingr_name'] = $this->ingredients->get_ingr_by_id(base64_decode($id));
		
		
				if(isset($_POST['id']) && !empty($_POST['id']))
				{
					
				$this->ingredients->update_manager_ingredient($_POST['id']);
				$this->session->set_flashdata('successmsg', "Update Quantity successfully.");
				$this->load->view('manager/inventory', $this->data);
				
				}
			
				else{
			
			
					$this->data['ing_info'] = $this->ingredients->get_ingr_by_id(base64_decode($id));
					$this->load->view('manager/editinventory', $this->data);	
					}
			
			
			
		

	}

	public function get_all_stock()
	{
		if (!$this->input->is_ajax_request()){
			redirect('manager/orders', 'refresh');
		}

		$type = $this->input->post('type');
		$menuitems = $this->allstock->get_all_stock();
		$menuitems_html = '';
		
		foreach ($menuitems as $menuitem){
			$menuitems_html .= "<div class='managerorder'><div class='orderitems pull-left' style=''><p><b>" . $menuitem->name . "</b></p>
								</div><div class='orderaction pull-right'>";
			if ($menuitem->available == 1){
				$menuitems_html .= "<a href='#' onclick='makeUnavailable(event)' menuitemid='" . $menuitem->id . "' 
								data-toggle='modal' class='btn btn-large'><i class='icon-minus'></i> Make Unavailable</a></div></div>";
			} else {
				$menuitems_html .= "<a href='#' onclick='makeAvailable(event)' menuitemid='" . $menuitem->id . "' 
								data-toggle='modal' class='btn btn-large btn-inverse'><i class='icon-plus icon-white'></i> Make Available</a></div></div>";
			}
			
		}

		echo $menuitems_html;
	}

	public function filter($id)
	{
		
		if($id!='All'){

			
			$query = $this->db->query("select * from ingredients where id = ". $id);
			$f_data = $query->result();
			

			
				$this->data['today_stock'] = $f_data;
				$this->data['all_stock'] = $this->allstock->get_all_stock();
			
			 $this->load->view('manager/inventory', $this->data);
							

			}else
			redirect('manager/inventory');		
                             
			
	}

	public function make_unavailable(){
		if (!$this->input->is_ajax_request()){
			redirect('manager/orders', 'refresh');
		}
		
		$this->allstock->set_availability();
		echo 1;
	}

	public function make_available(){
		if (!$this->input->is_ajax_request()){
			redirect('manager/orders', 'refresh');
		}

		$this->allstock->set_availability();
		echo 1;
	}

}