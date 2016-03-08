<?php if (! defined('BASEPATH')) exit('No direct script access allowed');
/**
* @author David Adamo Jr.
*/
class ingredients extends CI_Controller {
	public $data;

	public function __construct()
	{
		parent::__construct();
		$this->data['dependencies'] = $this->load->view('general/dependencies', '', TRUE);
		$this->data['header'] = $this->load->view('manager/header', '', TRUE);
		$this->data['deleteconfirm'] = $this->load->view('manager/deleteconfirmation', '', TRUE);

		$this->load->model('ingredient_model', 'ingredients');
	}

	public function index()
	{
		$this->data['ingredients'] = $this->ingredients->get_ingredients();
		$this->load->view('manager/ingredients',$this->data);
	}
	
	public function add()
	{
		$this->load->library('form_validation');

		$this->form_validation->set_rules('name', 'name', 'required');

		if ($this->form_validation->run() == FALSE){
			$this->load->view('manager/addingredient', $this->data);
		} else {
			//insert the  ingredient into the database
			if($this->ingredients->alreadyExit($this->input->post('name'))){
				$this->session->set_flashdata('successmsg', "Already added, Please Edit.");
				redirect('manager/ingredients');
			}
			$this->ingredients->insert_ingredient();
			$this->session->set_flashdata('successmsg', "New menu ingredient successfully created.");
			redirect('manager/ingredients');
			

			

		}
	}


	// public function edit($ingredientid)
	// {
	// 	$this->load->library('form_validation');

	// 	$this->form_validation->set_rules('name', 'name', 'required');

	// 	if ($this->form_validation->run() == FALSE){
	// 		$this->data['ingredients'] = $this->ingredients->get_ingredients($ingredientid);
	// 		$this->load->view('manager/editingredient', $this->data);
	// 	} else {
	// 		//insert the ingredient into the database
	// 		$this->ingredients->edit_ingredient($ingredientid);
			
	// 		$this->session->set_flashdata('successmsg', "Menu ingredient successfully updated.");
	// 		redirect('manager/ingredient');
	// 	}
	// }

	// function delete($ingredientid)
	// {
	// 	$this->ingredients->delete_ingredient($ingredientid);
	// 	$this->session->set_flashdata('successmsg', 'ingredient successfully deleted.');
	// 	redirect('manager/ingredient');

	// }
}