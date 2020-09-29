module ApplicationHelper
    def generate_index_route(params)
        str = "/products?"
        str += "search=#{params[:search]}&" if params[:search]
        str += "vendor=#{params[:vendor]}&" if params[:vendor]
        str += "location=#{params[:location]}&" if params[:location]
        return str
    end
end
