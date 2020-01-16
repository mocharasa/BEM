<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Profil extends CI_Controller{
	
	public function __construct(){
		parent::__construct();
		if($this->session->userdata('masuk') != TRUE){            
            redirect('index.php/login');
        }
		$this->load->model('profil_model');
	}
	
	function tentang(){
		$data['post'] 		= $this->profil_model->tentang();
		$data['action']		= "index.php/admin/profil/tentang_update/1";
		$data['title'] 		= "Profil Kelas Inspirasi";		
		$data['content'] 	= "admin/tentang";		
		$this->load->view('/admin/layout/template', $data);
	}
	
	function tentang_update(){
		$query = array('tentang' => $this->input->post('tentang'));	
		$this->session->set_flashdata('success','<strong>Data berhasil disimpan !!</strong>');
		$sql = $this->profil_model->tentang_update($query);
		redirect('index.php/admin/profil/tentang');
	}
	
	function kontak(){
		$data['post'] 		= $this->profil_model->kontak();
		$data['action']		= "index.php/admin/profil/kontak_update/1";
		$data['title'] 		= "Hubungi Kami";		
		$data['content'] 	= "admin/kontak";		
		$this->load->view('/admin/layout/template', $data);
	}
	
	function kontak_update(){
		$query = array(
						'telepon' 	=> $this->input->post('telepon'),
						'whatsapp' 	=> $this->input->post('whatsapp'),
						'email' 	=> $this->input->post('email'),
						'instagram'	=> $this->input->post('instagram'),
						'facebook' 	=> $this->input->post('facebook'),
						'twitter' 	=> $this->input->post('twitter'),
						'youtube' 	=> $this->input->post('youtube'),
						'alamat' 	=> $this->input->post('alamat')
						);	
		$this->session->set_flashdata('success','<strong>Data berhasil disimpan !!</strong>');
		$sql = $this->profil_model->kontak_update($query);
		redirect('index.php/admin/profil/kontak');
	}
	
	function sambutan(){
		$data['post'] 		= $this->profil_model->sambutan();
		$data['action']		= "index.php/admin/profil/sambutan_update/1";
		$data['title'] 		= "Sambutan Presiden BEM";		
		$data['content'] 	= "admin/sambutan";		
		$this->load->view('/admin/layout/template', $data);
	}
	
	function sambutan_update(){
		$config['upload_path']		= './upload/sambutan/';
		$config['allowed_types'] 	= 'png';
		$config['max_size']  		= '1048';
		$config['overwrite']		= TRUE;		
		$this->upload->initialize($config);
		if (!empty($_FILES['foto']['name'])) {
			if ($this->upload->do_upload('foto')){
                $gbr = $this->upload->data();                
                $gambar=$gbr['file_name'];			
				$query = array(	
							'tagline' 	=> $this->input->post('tagline'),
							'sambutan' 	=> $this->input->post('sambutan'),							
							'foto'		=> $gambar							
							);	
				$this->profil_model->sambutan_update($query);
			}
		} else {						
            $query = array(
							'tagline' 	=> $this->input->post('tagline'),
							'sambutan' 	=> $this->input->post('sambutan'),							
							'foto'		=> $this->input->post('old_image')
							);	
            $this->profil_model->sambutan_update($query);
		}
		$this->session->set_flashdata('success','<strong>Sambutan berhasil disimpan !!</strong>');
		redirect('index.php/admin/profil/sambutan');
	}
}