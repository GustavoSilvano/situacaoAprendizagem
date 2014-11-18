<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class verificar_login extends CI_Controller {

 function __construct()
 {
   parent::__construct();
   $this->load->model('user','',TRUE);
 }

 function index()
 {
   //This method will have the credentials validation
   $this->load->library('form_validation');

   $this->form_validation->set_rules('usuario', 'senha', 'trim|required|xss_clean');
   $this->form_validation->set_rules('senha', 'senha', 'trim|required|xss_clean|callback_check_database');

   if($this->form_validation->run() == FALSE)
   {
     //Field validation failed.  User redirected to login page
     $this->load->view('login_view');
   }
   else
   {
     //Go to private area
     redirect('home', 'refresh');
   }

 }

 function check_database($senha)
 {
   //Field validation succeeded.  Validate against database
   $username = $this->input->post('usuario');

   //query the database
   $result = $this->user->login($usuario, $senha);

   if($result)
   {
     $sess_array = array();
     foreach($result as $row)
     {
       $sess_array = array(
         'idusuario' => $row->idusuario,
         'usuario' => $row->usuario
       );
       $this->session->set_userdata('logged_in', $sess_array);
     }
     return TRUE;
   }
   else
   {
     $this->form_validation->set_message('check_database', 'Senha ou Usuário inválidos');
     return false;
   }
 }
}
?>