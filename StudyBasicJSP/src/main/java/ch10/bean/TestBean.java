package ch10.bean;

public class TestBean {

	private String name;//name Property
	private String content;
	
	//name 프로퍼티 값을 얻어내는 getter 메소드
	public String getName() {
		return name;
	}
	
	//name 프로퍼티 값을 저장하는 setter 메소드
	public void setName(String name) {
		this.name=name;
	}
	
	public String getContent() {
		return content;
	}
	
	public void setContent(String content) {
		this.content=content;
	}
	
}
