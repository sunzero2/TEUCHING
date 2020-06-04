package common.util;

public class File {
	private int file_idx;
	private int table_idx;
	private String table_name;
	private String origin_filename;
	private String rename_filename;
	private String savepath;

	public File() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getFile_idx() {
		return file_idx;
	}

	public void setFile_idx(int file_idx) {
		this.file_idx = file_idx;
	}

	public int getTable_idx() {
		return table_idx;
	}

	public void setTable_idx(int table_idx) {
		this.table_idx = table_idx;
	}

	public String getTable_name() {
		return table_name;
	}

	public void setTable_name(String table_name) {
		this.table_name = table_name;
	}

	public String getOrigin_filename() {
		return origin_filename;
	}

	public void setOrigin_filename(String origin_filename) {
		this.origin_filename = origin_filename;
	}

	public String getRename_filename() {
		return rename_filename;
	}

	public void setRename_filename(String rename_filename) {
		this.rename_filename = rename_filename;
	}

	public String getSavepath() {
		return savepath;
	}

	public void setSavepath(String savepath) {
		this.savepath = savepath;
	}

	@Override
	public String toString() {
		return "File [file_idx=" + file_idx + ", table_idx=" + table_idx + ", table_name=" + table_name
				+ ", origin_filename=" + origin_filename + ", rename_filename=" + rename_filename + ", savepath="
				+ savepath + "]";
	}

}
